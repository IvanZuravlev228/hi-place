import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../../../environment/environment";

@Injectable({
  providedIn: 'root'
})
export class ConfirmEmailService {

  constructor(private http: HttpClient) { }

  public confirm (token: string) {
    return this.http.get<any>(`${environment.backendURL}/auth/confirm-email?token=${token}`);
  }
}
