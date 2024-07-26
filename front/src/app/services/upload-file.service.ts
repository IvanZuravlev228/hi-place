import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams, HttpRequest} from "@angular/common/http";
import {Observable} from "rxjs";
import {environment} from "../../environment/environment";
import {CookieService} from "ngx-cookie-service";

@Injectable({
  providedIn: 'root'
})
export class UploadFileService {
  constructor(private http: HttpClient,
              private cookie: CookieService) { }

  public uploadUserLogo(file: File, userId: number): Observable<any> {
    const formData: FormData = new FormData();
    formData.append('file', file);

    const params = new HttpParams().set('userId', userId.toString());
    const headers = new HttpHeaders().set("Authorization", "Bearer " + this.cookie.get("jwt-token"));

    const req = new HttpRequest('POST', `${environment.backendURL}/images`, formData, {
      reportProgress: true,
      responseType: 'text',
      params: params,
      headers: headers
    });

    console.log("req:");
    console.log(req);

    return this.http.request(req);
  }

  public uploadExampleImages(formData: FormData, userId: number): Observable<any> {

    const params = new HttpParams().set('userId', userId.toString());
    const headers = new HttpHeaders()
      .set("Authorization", "Bearer " + this.cookie.get("jwt-token"));

    const req = new HttpRequest('POST', `${environment.backendURL}/images/examples/user/${userId}`, formData, {
      reportProgress: true,
      responseType: 'text',
      params: params,
      headers: headers
    });

    return this.http.request(req);
  }
}
