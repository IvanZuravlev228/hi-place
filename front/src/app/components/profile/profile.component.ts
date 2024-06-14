import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {User} from "../../models/User";
import {UserService} from "../../services/user.service";
import {Address} from "../../models/Address";
import {AddressService} from "../../services/address.service";
import {MainTypeOfService} from "../../models/MainTypeOfService";
import {MainTypeServiceService} from "../../services/main-type-service.service";
import {Price} from "../../models/Price";
import {PriceService} from "../../services/price.service";

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit{
  private userId: number = 0;
  user: User = new User();
  addresses: Address[] = [];
  isShowMap: boolean = false;
  addressLat: number = 0;
  addressLon: number = 0;

  mainTypes: MainTypeOfService[] = [];
  prices: Price[] = [];

  constructor(private activatedRoute: ActivatedRoute,
              private userService: UserService,
              private addressService: AddressService,
              private mainTypeOfService: MainTypeServiceService,
              private priceService: PriceService) {
  }

  ngOnInit(): void {
    this.activatedRoute.queryParams.subscribe(params => {
      this.userId = params['userId'];
      this.getUserById(this.userId);
    });

    this.getAllMainTypeOfService();
    this.getAllPriceByUser(this.user.id);
  }

  public getAllMainTypeOfService() {
    this.mainTypeOfService.getAllMainTypeOfService().subscribe({
      next: (mainTypes) => {
        this.mainTypes = mainTypes;
        // console.log(this.mainTypes);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  private getUserById(userId: number) {
    this.userService.getUserById(userId).subscribe({
      next: (user) => {
        this.user = user;
        this.hidePhone(this.user);

        this.getAllAddressesByUserId();
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getAllPriceByUser(userId: number) {
    this.priceService.getAllByUser(userId).subscribe({
      next: (prices) => {
        this.prices = prices;
        console.log("prices: " + this.prices);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getStars(rating: number): string[] {
    const stars = [];
    for (let i = 1; i <= 5; i++) {
      if (i <= rating) {
        stars.push('fas fa-star');
      } else if (i - 0.5 <= rating) {
        stars.push('fas fa-star-half-alt');
      } else {
        stars.push('far fa-star');
      }
    }
    return stars;
  }

  public hidePhone(user: User) {
    user.hiddenPhone = "+380 (**) *** ** **";
  }

  public revealPhone(user: User): void {
    user.hiddenPhone = user.phone;
    console.log(user);
  }

  private getAllAddressesByUserId() {
    this.addressService.getAllByUserId(this.userId).subscribe({
      next: (addresses) => {
        this.addresses = addresses;
        // console.log(this.addresses);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public showMap(lat: number, lon: number) {
    this.addressLat = lat;
    this.addressLon = lon;
    this.isShowMap = true;
  }
}
