import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {TypeOfServiceService} from "../../services/type-of-service.service";
import {TypeOfService} from "../../models/TypeOfService";
import {ServiceItem} from "../../models/ServiceItem";
import {ServiceItemService} from "../../services/service-item.service";

@Component({
  selector: 'app-service',
  templateUrl: './service.component.html',
  styleUrls: ['./service.component.css']
})
export class ServiceComponent implements OnInit {

  mainTypeId: number = 0;
  typesOfService: TypeOfService[] = [];

  constructor(private activatedRoute: ActivatedRoute,
              private typeOfServiceService: TypeOfServiceService,
              private serviceItemService: ServiceItemService) { }

  ngOnInit() {
    this.activatedRoute.queryParams.subscribe(params => {
      this.mainTypeId = params['mainTypeId'];
      this.getAllTypeOfMainService(this.mainTypeId);
    })

    console.log(this.mainTypeId);
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
}
