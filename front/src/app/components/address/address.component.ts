import { Component } from '@angular/core';
import {MapService} from "../../services/map.service";

@Component({
  selector: 'app-address',
  templateUrl: './address.component.html',
  styleUrls: ['./address.component.css']
})
export class AddressComponent {
  public query: string = '';
  public addresses: any[] = [];
  public selectedAddress: string = '';

  constructor(private mapService: MapService){ }

  ngOnInit(): void { }

  onQueryChange(): void {
    if (this.query.length > 2) {
      this.mapService.search(this.query).subscribe((results: any[]) => {
        this.addresses = results;
      });
    }
  }

  selectAddress(address: any): void {
    this.selectedAddress = address.display_name;
    this.query = address.display_name;
    this.addresses = [];
  }
}
