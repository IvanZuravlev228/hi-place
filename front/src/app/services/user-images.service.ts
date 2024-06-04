import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {UserServiceImagesResponse} from "../models/UserServiceImagesResponse";
import {environment} from "../../environment/environment";

@Injectable({
  providedIn: 'root'
})
export class UserImagesService {

  constructor(private http: HttpClient) { }

  public getExampleImagesByTypeOfServiceAndUserId(typeOfServiceId: number, userId: number) {
    return this.http.get<UserServiceImagesResponse[]>(environment.backendURL + "/images", {
      headers: {

      },
      params: {
        typeOfServiceId: typeOfServiceId,
        userId: userId
      }
    })
  }

  public getExampleImagesByMainTypeOfServiceAndUserId(mainTypeOfServiceId: number, userId: number) {
    return this.http.get<UserServiceImagesResponse[]>(environment.backendURL + "/images/main", {
      headers: {

      },
      params: {
        mainTypeOfServiceId: mainTypeOfServiceId,
        userId: userId
      }
    })
  }
}
