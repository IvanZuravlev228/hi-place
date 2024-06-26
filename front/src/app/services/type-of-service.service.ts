import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {TypeOfService} from "../models/typeService/TypeOfService";
import {environment} from "../../environment/environment";
import {Observable} from "rxjs";
import {TypeOfServiceCount} from "../models/typeService/TypeOfServiceCount";
import {TypeOfServiceView} from "../models/view/TypeOfServiceView";

@Injectable({
  providedIn: 'root'
})
export class TypeOfServiceService {

  constructor(private http: HttpClient) { }

  public getAllTypeOfMainService(mainTypeId: number) {
    return this.http.get<TypeOfService[]>(environment.backendURL + "/type-service/" + mainTypeId, {
      headers: {
        // "Authorization": "Bearer " + this.cookie.get("jwt-token")
      }
    })
  }

  public getAllTypeOfMainServiceView(mainTypeId: number) {
    return this.http.get<TypeOfServiceView[]>(environment.backendURL + "/type-service/" + mainTypeId, {
      headers: {
        // "Authorization": "Bearer " + this.cookie.get("jwt-token")
      }
    })
  }

  public getTypeOfServiceCountByUserId(userId: number): Observable<TypeOfServiceCount[]> {
    return this.http.get<TypeOfServiceCount[]>(environment.backendURL + "/type-service/user/" + userId);
  }
}
