import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../../environment/environment";
import {User} from "../models/User";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http: HttpClient) { }

  public getAllUsersByMainTypeOfServiceId(mainTypeOfServiceId: number) {
    return this.http.get<User[]>(environment.backendURL + "/user/main-service", {
      headers: {

      },
      params: {
        mainTypeOfServiceId: mainTypeOfServiceId.toString()
      }
    })
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number) {
    return this.http.get<User[]>(environment.backendURL + "/user/type-of-service", {
      headers: {

      },
      params: {
        serviceTypeId: typeOfServiceId.toString()
      }
    })
  }

  public getUsersByServiceItemId(serviceItemId: number) {
    return this.http.get<User[]>(environment.backendURL + "/user/service-item", {
      headers: {

      },
      params: {
        serviceItemId: serviceItemId.toString()
      }
    })
  }
}
