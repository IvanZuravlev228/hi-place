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

  public getAllUsersByMainTypeOfServiceId(mainTypeOfServiceId: number, city: string, page: number): Observable<User[]> {
    const params = new HttpParams()
      .set('mainTypeOfServiceId', mainTypeOfServiceId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize);

    return this.http.get<User[]>( `${environment.backendURL}/user/main-service/city/${city}`, {
      headers: {
      },
      params: params
    })
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number, city: string, page: number): Observable<User[]> {
    const params = new HttpParams()
      .set('serviceTypeId', typeOfServiceId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize);

    return this.http.get<User[]>(`${environment.backendURL}/user/type-of-service/city/${city}`, {
      headers: {
      },
      params: params
    })
  }

  public getUsersByServiceItemId(serviceItemId: number, city: string, page: number): Observable<User[]> {
    const params = new HttpParams()
      .set("serviceItemId", serviceItemId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize);

    const headers = new HttpHeaders({
      // 'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ' + localStorage.getItem('token') // Пример добавления заголовка авторизации
    });

    return this.http.get<User[]>(`${environment.backendURL}/user/service-item/city/${city}`, {
      headers: {
      },
      params: params
    })
  }

  public createUser(user: UserRequest): Observable<User> {
    const userJSON = JSON.stringify(user);
    return this.http.post<User>(`${environment.backendURL}/user`, userJSON, {
      headers: {
        "Content-Type": "application/json",
        // "Authorization": "Bearer " + this.cookie.get("jwt-token")
      }
    })
  }

  public getUserById(userId: number): Observable<User> {
    return this.http.get<User>(`${environment.backendURL}/user/` + userId);
  }
}
