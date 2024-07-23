import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {environment} from "../../environment/environment";
import {User} from "../models/User";
import {UserRequest} from "../models/UserRequest";
import {Observable} from "rxjs";
import {Sort} from "../components/sorting/Sort";
import {CookieService} from "ngx-cookie-service";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http: HttpClient,
              private cookie: CookieService) { }

  public getAllUsersByMainTypeOfServiceId(mainTypeOfServiceId: number, city: string, page: number): Observable<User[]> {
    const params = new HttpParams()
      .set('mainTypeOfServiceId', mainTypeOfServiceId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize);

    return this.http.get<User[]>( `${environment.backendURL}/user/main-service/city/${city}`, {
      params: params
    });
  }

  public getAllUsersByTypeOfServiceId(typeOfServiceId: number, city: string, page: number, sort: Sort): Observable<User[]> {
    const params = new HttpParams()
      .set('serviceTypeId', typeOfServiceId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize)
      .set("sortByType", sort.sortByType)
      .set("sortByAtSalon", sort.sortByAtSalon)
      .set("sortByHomeVisit", sort.sortByHomeVisit)
      .set("sortByOnlineCounseling", sort.sortByOnlineCounseling);

    console.log("params: ");
    console.log(params);

    return this.http.get<User[]>(`${environment.backendURL}/user/type-of-service/city/${city}`, {
      params: params
    });
  }

  public getUsersByServiceItemId(serviceItemId: number, city: string, page: number, sort: Sort): Observable<User[]> {
    const params = new HttpParams()
      .set("serviceItemId", serviceItemId.toString())
      .set("page", page)
      .set("size", environment.paginationUsersSize)
      .set("sortByType", sort.sortByType)
      .set("sortByAtSalon", sort.sortByAtSalon)
      .set("sortByHomeVisit", sort.sortByHomeVisit)
      .set("sortByOnlineCounseling", sort.sortByOnlineCounseling);

    console.log("params: ");
    console.log(params);

    return this.http.get<User[]>(`${environment.backendURL}/user/service-item/city/${city}`, {
      params: params
    });
  }

  public createUser(user: UserRequest): Observable<User> {
    const userJSON = JSON.stringify(user);
    const headers = new HttpHeaders()
      .set("Content-Type", "application/json")
      .set("Authorization", "Bearer " + this.cookie.get("jwt-token"));

    return this.http.post<User>(`${environment.backendURL}/auth/register`, userJSON, {
      headers: headers
    })
  }

  public getUserById(userId: number): Observable<User> {
    return this.http.get<User>(`${environment.backendURL}/user/${userId}`);
  }
}
