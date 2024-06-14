import { Injectable } from '@angular/core';
import {HttpClient, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Price} from "../models/Price";
import {environment} from "../../environment/environment";

@Injectable({
  providedIn: 'root'
})
export class PriceService {

  constructor(private http: HttpClient) { }

  public getAllByUser(userId: number): Observable<Price[]> {
    // const params = new HttpParams().set("userEmail", userEmail);

    return this.http.get<Price[]>(environment.backendURL + "/price/user/1");
  }
}
