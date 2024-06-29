import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams, HttpRequest, HttpResponse} from "@angular/common/http";
import {Observable} from "rxjs";
import {environment} from "../../environment/environment";

@Injectable({
  providedIn: 'root'
})
export class UploadFileService {

  constructor(private http: HttpClient) { }

  public uploadUserLogo(file: File, userId: number): Observable<any> {
    const formData: FormData = new FormData();
    formData.append('file', file);

    const params = new HttpParams().set('userId', userId.toString());

    const req = new HttpRequest('POST', environment.backendURL + "/images", formData, {
      reportProgress: true,
      responseType: 'text',
      params: params
    });

    return this.http.request(req);
  }

  public uploadExampleImages(formData: FormData, userId: number): Observable<any> {

    const params = new HttpParams().set('userId', userId.toString());

    const req = new HttpRequest('POST', environment.backendURL + "/images/examples/user/" + userId, formData, {
      reportProgress: true,
      responseType: 'text',
      params: params
    });

    return this.http.request(req);
  }
}
