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
import {Sort} from "../sorting/Sort";

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
  nextServiceItemOrTypeOfService: boolean = false;
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

  currentSort: Sort = new Sort();

  public handleSortChanged(sort: Sort) {
    this.currentSort = sort;
    this.ngOnInit();
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

    this.userService.getUsersByServiceItemId(serviceItemId, this.city, this.serviceItemPaginationPageCount, this.currentSort).subscribe({
      next: (users) => {
        this.users = users;
        this.users.forEach(user => this.getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId, user.id, user));
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number) {
    this.userService.getAllUsersByTypeOfServiceId(typeOfServiceId, this.city, this.typeOfServicePaginationPageCount, this.currentSort).subscribe({
      next: (users) => {
        this.users = users;
        this.users.forEach(user => this.getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId, user.id, user));
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public goToUserPricePage(id: number) {
    this.router.navigate(["user/profile"], {
      queryParams: {
        userId: id
      }
    });
  }

  public previousPage() {
    if (this.lastServiceItemId == -1 && this.lastTypeOfServiceId == -1 && this.mainTypePaginationPageCount > 0) {
      this.mainTypePaginationPageCount--;
      this.getAllUsersByMainTypeOfServiceId(this.mainTypeId);
      return;
    }

    if (this.nextServiceItemOrTypeOfService && this.serviceItemPaginationPageCount > 0) {
      this.serviceItemPaginationPageCount--;
      this.getUsersByServiceItemId(this.lastServiceItemId, this.lastTypeOfServiceId);
      return;
    }

    if (this.typeOfServicePaginationPageCount > 0) {
      this.typeOfServicePaginationPageCount--;
      this.getAllUsersByTypeOfServiceId(this.lastTypeOfServiceId);
    }

  }

  public nextPage() {
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
      return;
    }

    this.typeOfServicePaginationPageCount++;
    this.getAllUsersByTypeOfServiceId(this.lastTypeOfServiceId);
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

  private getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId: number, userId: number, user: User) {
    this.userImagesService.getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId, userId).subscribe({
      next: (userServiceImages) => {
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
}
