import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Price} from "../models/price/Price";
import {environment} from "../../environment/environment";
import {PriceProfile} from "../models/price/PriceProfile";
import {PriceCreateRequestDto} from "../models/price/PriceCreateRequestDto";

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

  public getAllPriceWithoutPrice(typeOfServiceId: number, userId: number) {
    return this.http.get<PriceProfile[]>(environment.backendURL + `/price/type/${typeOfServiceId}/user/${userId}`);
  }

  public saveAllPrices(priceDtos: PriceCreateRequestDto[]):Observable<Boolean> {
    const json = JSON.stringify(priceDtos);
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ' + localStorage.getItem('token') // Пример добавления заголовка авторизации
    });

    return this.http.post<Boolean>(environment.backendURL + "/price", json, {headers: headers});
  }

  public updatePrice(price: PriceCreateRequestDto, prevPriceId: number) {
    return this.http.put<Boolean>(environment.backendURL + `/price/${prevPriceId}`, price);
  }

  public deletePriceById(priceId: number){
    return this.http.delete<void>(`${environment.backendURL}/price/${priceId}`);
  }
}
