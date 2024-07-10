import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from "@angular/router";
import {TypeOfServiceService} from "../../services/type-of-service.service";
import {TypeOfService} from "../../models/typeService/TypeOfService";
import {ServiceItemService} from "../../services/service-item.service";
import {UserService} from "../../services/user.service";
import {User} from "../../models/User";
import {UserImagesService} from "../../services/user-images.service";
import {environment} from "../../../environment/environment";
import {CookieService} from "ngx-cookie-service";

@Component({
  selector: 'app-service',
  templateUrl: './service.component.html',
  styleUrls: ['./service.component.css']
})
export class ServiceComponent implements OnInit {
  typesOfService: TypeOfService[] = [];
  users: User[] = [];
  mainTypeId: number = 0;
  mainTypePaginationPageCount = 0;
  lastTypeOfServiceId: number = -1;
  lastServiceItemId: number = -1;
  serviceItemPaginationPageCount: number = 0;
  typeOfServicePaginationPageCount: number = 0;
  nextServiceItemOrTypeOfService: boolean = false; // true = service item | false = type of service
  city: string = "";


  constructor(private activatedRoute: ActivatedRoute,
              private router: Router,
              private typeOfServiceService: TypeOfServiceService,
              private serviceItemService: ServiceItemService,
              private userService: UserService,
              private userImagesService: UserImagesService,
              private cookieService: CookieService) { }

  ngOnInit() {
    this.city = this.cookieService.get("user_city");

    this.activatedRoute.queryParams.subscribe(params => {
      this.mainTypeId = params['mainTypeId'];
      this.getAllTypeOfMainService(this.mainTypeId);
    })
    this.getAllUsersByMainTypeOfServiceId(this.mainTypeId);
  }

  private getAllTypeOfMainService(mainTypeId: number) {
    this.typeOfServiceService.getAllTypeOfMainService(mainTypeId).subscribe({
      next: (data) => {
        this.typesOfService = data;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public loadServiceItem(typeOfService: TypeOfService) {
    this.getAllUsersByTypeOfServiceId(typeOfService.id);
    this.nextServiceItemOrTypeOfService = false;
    this.lastTypeOfServiceId = typeOfService.id;

    this.serviceItemService.getAllServiceItemsByTypeId(typeOfService.id).subscribe({
      next: (serviceItems) => {
        typeOfService.serviceItem = serviceItems;
      },
      error: (error) => {
        console.log(error)
      }
    })
  }

  public getAllUsersByMainTypeOfServiceId(mainTypeId: number) {
    this.userService.getAllUsersByMainTypeOfServiceId(mainTypeId, this.city, this.mainTypePaginationPageCount).subscribe({
      next: (users) => {
        this.users = users;
        this.users.forEach(user => this.getExampleImagesByMainTypeOfServiceAndUserId(mainTypeId, user.id, user));
        this.users.forEach(user => this.hidePhone(user));
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getUsersByServiceItemId(serviceItemId: number, typeOfServiceId: number) {
    this.nextServiceItemOrTypeOfService = true;
    this.lastServiceItemId = serviceItemId;
    this.lastTypeOfServiceId = typeOfServiceId;

    this.userService.getUsersByServiceItemId(serviceItemId, this.city, this.serviceItemPaginationPageCount).subscribe({
      next: (users) => {
        this.users = users;
        this.getImagesAndHidePhone(this.users, typeOfServiceId);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number) {
    this.userService.getAllUsersByTypeOfServiceId(typeOfServiceId, this.city, this.typeOfServicePaginationPageCount).subscribe({
      next: (users) => {
        this.users = users;
        this.getImagesAndHidePhone(this.users, typeOfServiceId);
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  private getImagesAndHidePhone(users: User[], typeOfServiceId: number) {
    users.forEach(user => this.getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId, user.id, user));
    users.forEach(user => this.hidePhone(user));
  }

  private getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId: number, userId: number, user: User) {
    this.userImagesService.getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId, userId).subscribe({
      next: (userServiceImages) => {
        console.log(userServiceImages);
        user.examples = userServiceImages;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  private getExampleImagesByMainTypeOfServiceAndUserId(mainTypeOfServiceId: number, userId: number, user: User) {
    this.userImagesService.getExampleImagesByMainTypeOfServiceAndUserId(mainTypeOfServiceId, userId).subscribe({
      next: (userServiceImages) => {
        user.examples = userServiceImages;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  // public getStars(rating: number): string[] {
  //   const stars = [];
  //   for (let i = 1; i <= 5; i++) {
  //     if (i <= rating) {
  //       stars.push('fas fa-star');
  //     } else if (i - 0.5 <= rating) {
  //       stars.push('fas fa-star-half-alt');
  //     } else {
  //       stars.push('far fa-star');
  //     }
  //   }
  //   return stars;
  // }

  public hidePhone(user: User) {
    user.hiddenPhone = this.formatPhone(user.phone);
  }

  private formatPhone(phone: string): string {
    // +38 (095) 332 42 55
    // Регулярное выражение для выделения частей номера телефона
    const regex = /(\+\d{2})\s\((\d{3})\)\s(\d{3})\s(\d{2})\s(\d{2})/;
    const match = phone.match(regex);

    if (match) {
      const country = match[1];
      const area = match[2];
      const firstPart = match[3];
      const maskedPart = '** **';

      return `${country} (${area}) ${firstPart} ${maskedPart}`;
    }

    // Если номер телефона не соответствует ожидаемому формату, вернуть исходный номер
    return phone;
  }

  // public revealPhone(user: User): void {
  //   user.hiddenPhone = user.phone;
  // }

  public goToUserPricePage(id: number) {
    this.router.navigate(["user/profile"], {
      queryParams: {
        userId: id
      }
    });
  }

  previousPage() {
    if (this.lastServiceItemId == -1 && this.lastTypeOfServiceId == -1 && this.mainTypePaginationPageCount > 0) {
      this.mainTypePaginationPageCount--;
      this.getAllUsersByMainTypeOfServiceId(this.mainTypeId);
      return;
    }

    if (this.nextServiceItemOrTypeOfService && this.serviceItemPaginationPageCount > 0) {
      this.serviceItemPaginationPageCount--;
      this.getUsersByServiceItemId(this.lastServiceItemId, this.lastTypeOfServiceId);
      console.log("new two service item --");
      return;
    }

    if (this.typeOfServicePaginationPageCount > 0) {
      this.typeOfServicePaginationPageCount--;
      this.getAllUsersByTypeOfServiceId(this.lastTypeOfServiceId);
      console.log("new type of service --");
    }

  }

  nextPage() {
    if (this.users.length < environment.paginationUsersSize) {
      return;
    }

    if (this.lastServiceItemId == -1 && this.lastTypeOfServiceId == -1) {
      this.mainTypePaginationPageCount++;
      this.getAllUsersByMainTypeOfServiceId(this.mainTypeId);
      return;
    }

    if (this.nextServiceItemOrTypeOfService) {
      this.serviceItemPaginationPageCount++;
      this.getUsersByServiceItemId(this.lastServiceItemId, this.lastTypeOfServiceId);
      console.log("new next service item ++");
      return;
    }

    this.typeOfServicePaginationPageCount++;
    this.getAllUsersByTypeOfServiceId(this.lastTypeOfServiceId);
    console.log("new type of service ++");
  }

  // private defaultInitPaginationCount() {
  //   this.serviceItemPaginationPageCount = 0;
  //   this.typeOfServicePaginationPageCount = 0;
  //   this.mainTypePaginationPageCount = 0;
  // }
}
