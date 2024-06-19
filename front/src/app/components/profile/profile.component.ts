import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {User} from "../../models/User";
import {UserService} from "../../services/user.service";
import {Address} from "../../models/Address";
import {AddressService} from "../../services/address.service";
import {MainTypeOfService} from "../../models/typeService/MainTypeOfService";
import {Price} from "../../models/price/Price";
import {PriceService} from "../../services/price.service";
import {TypeOfServiceService} from "../../services/type-of-service.service";
import {TypeOfServiceCount} from "../../models/typeService/TypeOfServiceCount";

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit{

  userId: number = 0;
  user: User = new User();
  addresses: Address[] = [];

  addressLat: number = 0;
  addressLon: number = 0;

  prices: Price[] = [];
  profilePriceData: TypeOfServiceCount[] = [];

  images: string[] = [
    './assets/image/main/haircut-man-main.jpg',
    './assets/image/main/eyebrow-main.jpg',
    './assets/image/main/photosession.jpg',
    './assets/image/main/tattoo-main.jpg',
    './assets/image/main/injection-main.jpg',
    './assets/image/main/facial-main.jpg',
    './assets/image/main/epilation.jpg',
    './assets/image/main/eyebrow-tattoo-main.jpg',
    './assets/image/main/haircut-man-main.jpg',
  ];

  constructor(private activatedRoute: ActivatedRoute,
              private userService: UserService,
              private addressService: AddressService,
              private priceService: PriceService,
              private typeOfServiceService: TypeOfServiceService) {
  }

  ngOnInit(): void {
    this.activatedRoute.queryParams.subscribe(params => {
      this.userId = params['userId'];
    });


    this.getAllTypeOfServiceCountByUserId();
    this.getAllPriceByUserId(this.userId);
    this.getAllAddressesByUserId(this.userId);
  }

  public getAllPriceByUserId(userId: number) {
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

  private getAllAddressesByUserId(userId: number) {
    this.addressService.getAllByUserId(userId).subscribe({
      next: (addresses) => {
        this.addresses = addresses;
        this.addressLat = addresses[0].lat;
        this.addressLon = addresses[0].lon;
        // console.log(this.addresses);
      },
      error: (error) => {
        console.log(error);
      }
    });


  }

  public showMap(lat: number, lon: number) {
    this.addressLat = lat;
    this.addressLon = lon;
  }

  public getAllTypeOfServiceCountByUserId() {
    this.typeOfServiceService.getTypeOfServiceCountByUserId(this.userId).subscribe({
      next: (typeOfServiceCounts) => {
        this.profilePriceData = typeOfServiceCounts;
        console.log(this.profilePriceData);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  getPriceByTypeOfService(typeOfServiceId: number, typeCount: TypeOfServiceCount) {
    this.priceService.getAllPriceProfileByTypeOfServiceIdAndUserId(typeOfServiceId, this.userId).subscribe({
      next: (priceProfile) => {
        typeCount.priceProfile = priceProfile;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }
}
