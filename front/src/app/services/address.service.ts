import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {map, Observable} from "rxjs";
import {Address} from "../models/Address";
import {environment} from "../../environment/environment";

@Injectable({
  providedIn: 'root'
})
export class AddressService {
  private apiUrl: string = 'https://nominatim.openstreetmap.org/search';

  constructor(private http: HttpClient) { }

  public search(query: string, countryCodes: string, language: string): Observable<any[]> {
    const params = new HttpParams()
      .set('q', query)
      .set('format', 'json')
      .set('addressdetails', '1')
      .set('limit', '5')
      .set('countrycodes', countryCodes)
      // .set('city', city)
      .set('accept-language', language);

    // return this.http.get<any[]>(this.apiUrl, { params }).pipe(
    //   map(results => results.map(result => ({
    //     display_name: result.display_name,
    //     lat: result.lat,
    //     lon: result.lon
    //   })))
    // );

    return this.http.get<any[]>(this.apiUrl, { params });
  }

  public saveNewAddress(address: Address): Observable<Address> {
    const addressJSON = JSON.stringify(address);
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
      // 'Authorization': 'Bearer ' + localStorage.getItem('token') // Пример добавления заголовка авторизации
    });

    return this.http.post<Address>(environment.backendURL + "/address", addressJSON, {headers: headers});
  }

  public getAllByUserId(userId: number) {
    return this.http.get<Address[]>(environment.backendURL + "/address/user/" + userId);
  }

  deleteAddressById(addressId: number) {
    return this.http.delete<void>(`${environment.backendURL}/address/${addressId}`);
  }
}
