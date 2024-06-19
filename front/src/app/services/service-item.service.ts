import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {TypeOfService} from "../models/typeService/TypeOfService";
import {environment} from "../../environment/environment";
import {ServiceItem} from "../models/ServiceItem";

@Injectable({
  providedIn: 'root'
})
export class ServiceItemService {

  constructor(private http: HttpClient) { }

  public getAllServiceItemsByTypeId(typeId: number) {
    return this.http.get<ServiceItem[]>(environment.backendURL + "/service/" + typeId, {
      headers: {
        // "Authorization": "Bearer " + this.cookie.get("jwt-token")
      }
    })
  }
}
