import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {MainTypeServiceService} from "../../services/main-type-service.service";
import {TypeOfServiceService} from "../../services/type-of-service.service";
import {AllServiceForView} from "../../models/view/AllServiceForView";
import {PriceService} from "../../services/price.service";
import {TypeOfServiceView} from "../../models/view/TypeOfServiceView";
import {PriceProfile} from "../../models/price/PriceProfile";
import {PriceCreateRequestDto} from "../../models/price/PriceCreateRequestDto";

@Component({
  selector: 'app-add-service',
  templateUrl: './add-service.component.html',
  styleUrls: ['./add-service.component.css']
})
export class AddServiceComponent implements OnInit {
  private userId: number = 0;

  createModel: AllServiceForView[] = [];
  isLoading: boolean = false;

  constructor(private activatedRoute: ActivatedRoute,
              private mainTypeService: MainTypeServiceService,
              private typeOfServiceService: TypeOfServiceService,
              private priceService: PriceService) {
  }

  ngOnInit(): void {
    this.activatedRoute.queryParams.subscribe(params => {
      this.userId = params['userId'];
    });

    this.getAllMainTypeOfService();
  }

  public onSubmit() {
    this.isLoading = true;
    this.saveOrUpdatePrice(this.createModel);
  }

  private getAllMainTypeOfService() {
    this.mainTypeService.getAllMainTypeOfService().subscribe({
      next: (mainTypes) => {
        this.createModel = mainTypes.map(mainType => {
          const serviceItemForCreateView = new AllServiceForView();
          serviceItemForCreateView.mainTypes = mainType;
          serviceItemForCreateView.typesOfService = [];
          return serviceItemForCreateView;
        });
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getTypeOfService(model: AllServiceForView) {
    this.typeOfServiceService.getAllTypeOfMainServiceView(model.mainTypes.id).subscribe({
      next: (types) => {
        model.typesOfService = types;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public getEmptyPrice(typeId: number, type: TypeOfServiceView) {
    this.priceService.getAllPriceWithoutPrice(typeId, this.userId).subscribe({
      next: (emptyPrices) => {
        type.prices = emptyPrices;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  private saveOrUpdatePrice(modelForSave: AllServiceForView[]) {
    const priceProfilesCreate: PriceCreateRequestDto[] = [];

    modelForSave.forEach(serviceForView => {
      if (serviceForView.typesOfService) {
        serviceForView.typesOfService.forEach(typeOfService => {
          if(typeOfService.prices) {
            typeOfService.prices.forEach(priceProfile => {
              if (priceProfile.price !== undefined && priceProfile.price !== null && priceProfile.timeUnit) {
                const dto: PriceCreateRequestDto = {
                  serviceItemId: priceProfile.serviceItemId,
                  userId: this.userId,
                  price: priceProfile.price,
                  timeUnit: priceProfile.timeUnit
                }

                if (priceProfile.id) {
                  this.updatePrice(dto, priceProfile.id);
                  return;
                }
                priceProfilesCreate.push(dto);
              }
            });
          }
        });
      }
    });

    this.savePrice(priceProfilesCreate);
  }

  private savePrice(priseRequestDto: PriceCreateRequestDto[]) {
    if (priseRequestDto.length == 0) {
      this.isLoading = false;
      return;
    }

    this.priceService.saveAllPrices(priseRequestDto).subscribe({
      next: (result) => {
        console.log("new prices were saved successfully: " + result);
        this.isLoading = false;
        this.createModel = [];
        this.getAllMainTypeOfService();
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  private updatePrice(priceProfile: PriceCreateRequestDto, prevPriceId: number) {
    this.priceService.updatePrice(priceProfile, prevPriceId).subscribe({
      next: (result) => {
        console.log("price was updated successfully: " + result);
        this.isLoading = false;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }

  public deletePrice(prices: PriceProfile[], priceId: number) {
    if (!priceId) {
      return;
    }
    this.isLoading = true;

    this.priceService.deletePriceById(priceId).subscribe({
      next: () => {
        const index = prices.findIndex(item => item.id === priceId);
        if (index !== -1) {
          prices.splice(index, 1);
        }
        this.isLoading = false;
      },
      error: (error) => {
        console.log(error);
      }
    })
  }
}
