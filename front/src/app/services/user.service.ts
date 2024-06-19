import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {environment} from "../../environment/environment";
import {User} from "../models/User";
import {UserRequest} from "../models/UserRequest";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http: HttpClient) { }

  public getAllUsersByMainTypeOfServiceId(mainTypeOfServiceId: number): Observable<User[]> {
    return this.http.get<User[]>(environment.backendURL + "/user/main-service", {
      headers: {
      },
      params: {
        mainTypeOfServiceId: mainTypeOfServiceId.toString()
      }
    })
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number): Observable<User[]> {
    return this.http.get<User[]>(environment.backendURL + "/user/type-of-service", {
      headers: {
      },
      params: {
        serviceTypeId: typeOfServiceId.toString()
      }
    })
  }

  public getUsersByServiceItemId(serviceItemId: number): Observable<User[]> {
    const params = new HttpParams().set("serviceItemId", serviceItemId.toString())
    const headers = new HttpHeaders({
      // 'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ' + localStorage.getItem('token') // Пример добавления заголовка авторизации
    });

    return this.http.get<User[]>(environment.backendURL + "/user/service-item", { params, headers })
  }

  public createUser(user: UserRequest): Observable<User> {
    const userJSON = JSON.stringify(user);
    return this.http.post<User>(environment.backendURL + "/user", userJSON, {
      headers: {
        "Content-Type": "application/json",
        // "Authorization": "Bearer " + this.cookie.get("jwt-token")
      }
    })
  }

  public getUserById(userId: number): Observable<User> {
    return this.http.get<User>(environment.backendURL + "/user/" + userId);
  }
}
