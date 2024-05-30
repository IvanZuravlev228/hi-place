import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {TypeOfServiceService} from "../../services/type-of-service.service";
import {TypeOfService} from "../../models/TypeOfService";
import {ServiceItem} from "../../models/ServiceItem";
import {ServiceItemService} from "../../services/service-item.service";
import {UserService} from "../../services/user.service";
import {User} from "../../models/User";

@Component({
  selector: 'app-service',
  templateUrl: './service.component.html',
  styleUrls: ['./service.component.css']
})
export class ServiceComponent implements OnInit {

  mainTypeId: number = 0;
  typesOfService: TypeOfService[] = [];
  users: User[] = [];

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
              private typeOfServiceService: TypeOfServiceService,
              private serviceItemService: ServiceItemService,
              private userService: UserService) { }

  ngOnInit() {
    this.activatedRoute.queryParams.subscribe(params => {
      this.mainTypeId = params['mainTypeId'];
      this.getAllTypeOfMainService(this.mainTypeId);
    })

    console.log(this.mainTypeId);

    this.getAllUsers();
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

  public loadServiceItem(serv: TypeOfService) {
    this.serviceItemService.getAllServiceItemsByTypeId(serv.id).subscribe({
      next: (serviceItems) => {
        serv.serviceItem = serviceItems;
        console.log(serviceItems);
      },
      error: (error) => {
        console.log(error)
      }
    })
  }

  public getAllUsers() {
    this.userService.getAllUsers().subscribe({
      next: (users) => {
        this.users = users;
        console.log(users);
        this.users.forEach(user => {
          this.hidePhone(user);
        });
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  getStars(rating: number): string[] {
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

  hidePhone(user: User) {
    user.hiddenPhone = this.formatPhone(user.phone);
    console.log(user.hiddenPhone);
  }

  formatPhone(phone: string): string {
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

  revealPhone(user: User): void {
    user.hiddenPhone = user.phone;
  }
}
