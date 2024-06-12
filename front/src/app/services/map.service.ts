import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {map, Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class MapService {

  private apiUrl: string = 'https://nominatim.openstreetmap.org/search';

  constructor(private http: HttpClient) { }

  search(query: string): Observable<any[]> {
    const params = {
      q: query,
      format: 'json',
      addressdetails: '1',
      limit: '5'
    };
    return this.http.get<any[]>(this.apiUrl, { params }).pipe(
      map(results => results.map(result => ({
        display_name: result.display_name,
        lat: result.lat,
        lon: result.lon
      })))
    );
  }
}
