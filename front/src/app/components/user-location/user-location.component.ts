import {Component, OnInit} from '@angular/core';
import {CookieService} from "ngx-cookie-service";
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {AddressService} from "../../services/address.service";

@Component({
  selector: 'app-user-location',
  templateUrl: './user-location.component.html',
  styleUrls: ['./user-location.component.css']
})
export class UserLocationComponent implements OnInit {
  userCityCookieName: string = "user_city";
  currentCity: string = "Kyiv";
  cities: string[] = [];

  constructor(private cookieService: CookieService,
              private http: HttpClient,
              private addressService: AddressService) {
  }

  ngOnInit() {
    this.getAllCities();

    if (!this.cookieService.get(this.userCityCookieName)) {
      this.getUserLocation();
      return;
    }

    this.currentCity = this.cookieService.get(this.userCityCookieName);
  }

  public onCityChange(newCity: string): void {
    this.currentCity = newCity;
    this.cookieService.set(this.userCityCookieName, newCity, 7);
  }

  private getUserLocation(): void {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        this.getCityName(latitude, longitude);
      });
    } else {
      console.error('Geolocation is not supported by this browser.');
    }
  }

  private getCityName(lat: number, lon: number): void {
    const url = `https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lon}`;
    const headers = new HttpHeaders({
      'Accept-Language': 'en'
    });

    this.http.get(url, { headers }).subscribe((data: any) => {
      console.log(data);
      const city = data.address.city || data.address.town || data.address.village;
      console.log(`City: ${city}`);
      this.cookieService.set("user_city", city, 7);
      this.currentCity = city;
    });
  }

  private getAllCities() {
    this.addressService.getAllCities().subscribe({
      next: (cities) => {
        this.cities = cities;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }
}
