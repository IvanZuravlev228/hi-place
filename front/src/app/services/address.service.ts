import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import { Observable} from "rxjs";
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
      .set('accept-language', language);

    return this.http.get<any[]>(this.apiUrl, { params });
  }

  public saveNewAddress(address: Address): Observable<Address> {
    const addressJSON = JSON.stringify(address);
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
    });

    return this.http.post<Address>(`${environment.backendURL}/address`, addressJSON, {
      headers: headers
    });
  }

  public getAllByUserId(userId: number): Observable<Address[]> {
    return this.http.get<Address[]>(`${environment.backendURL}/address/user/${userId}`);
  }

  public deleteAddressById(addressId: number): Observable<void> {
    return this.http.delete<void>(`${environment.backendURL}/address/${addressId}`);
  }

  public getAllCities(): Observable<string[]> {
    return this.http.get<string[]>(`${environment.backendURL}/address/cities`);
  }
}
