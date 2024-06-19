import { Injectable } from '@angular/core';
import {HttpClient, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Price} from "../models/price/Price";
import {environment} from "../../environment/environment";
import {PriceProfile} from "../models/price/PriceProfile";

@Injectable({
  providedIn: 'root'
})
export class PriceService {

  constructor(private http: HttpClient) { }

  public getAllByUser(userId: number): Observable<Price[]> {
    // const params = new HttpParams().set("userEmail", userEmail);

    return this.http.get<Price[]>(environment.backendURL + "/price/user/1");
  }

  public getAllPriceProfileByTypeOfServiceIdAndUserId(typeOfServiceId: number, userId: number): Observable<PriceProfile[]> {
    return this.http.get<PriceProfile[]>(environment.backendURL + "/price/user/" + userId + "/type/" + typeOfServiceId);
  }
}
