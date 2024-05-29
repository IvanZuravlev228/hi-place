import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {TypeOfService} from "../models/TypeOfService";
import {environment} from "../../environment/environment";

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
}
