import { Component } from '@angular/core';
import {Router} from "@angular/router";

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent {
  serviceItems = [
    { id: 'manicure', name: 'Нігтьовий сервіс', image: './assets/image/main/manicure-main.jpg', dbID: 4 },
    { id: 'haircut', name: 'Перукарські послуги', image: './assets/image/main/haircut-main.jpg', dbID: 3  },
    { id: 'eyebrow', name: 'Брови / вії', image: './assets/image/main/eyebrow-main.jpg', dbID: 10  },
    { id: 'makeup', name: 'Візаж та макіяж', image: './assets/image/main/makeup-main.jpg', dbID: 2  },
    { id: 'tattoo', name: 'Тату / пірсинг', image: './assets/image/main/tattoo-main.jpg', dbID: 8  },
    { id: 'facial', name: 'Догляд за обличчям', image: './assets/image/main/facial-main.jpg', dbID: 1  },
    { id: 'injections', name: 'Уколи для краси', image: './assets/image/main/injection-main.jpg', dbID: 5  },
    { id: 'bodyCare', name: 'Догляд за тілом', image: './assets/image/main/body-care-main.jpg', dbID: 6  },
    { id: 'epilation', name: 'Епіляція / Депіляція', image: './assets/image/main/epilation.jpg', dbID: 7  },
    { id: 'eyebrowTattoo', name: 'Татуаж', image: './assets/image/main/eyebrow-tattoo-main.jpg', dbID: 9  },
    { id: 'photosession', name: 'Фотосесії', image: './assets/image/main/photosession.jpg', dbID: 11  },
    { id: 'fitness', name: 'Фітнес', image: './assets/image/main/fitness.jpg', dbID: 12  },
  ];

  visibleItemsCount = 9;

  constructor(private router: Router) {
  }

  showMoreItems() {
    this.visibleItemsCount = this.serviceItems.length;
  }

  public goToServicePage(dbID: number) {
    this.router.navigate(["services"], {
      queryParams: {
        mainTypeId: dbID
      }});
  }
}
