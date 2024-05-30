import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {environment} from "../../environment/environment";
import {User} from "../models/User";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http: HttpClient) { }

  public getAllUsers() {
    return this.http.get<User[]>(environment.backendURL + "/user/all", {
      headers: {

      }
    })
  }
}
