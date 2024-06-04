import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {AppComponent} from "./app.component";
import {MainComponent} from "./components/main/main.component";
import {AboutComponent} from "./components/about/about.component";
import {ServiceComponent} from "./components/service/service.component";
import {UserPriceComponent} from "./components/user-price/user-price.component";

const routes: Routes = [
  {path: '', component: AppComponent},
  {path: 'home', component: MainComponent},
  {path: 'about', component: AboutComponent},
  {path: 'services', component: ServiceComponent},
  {path: 'services/user/price', component: UserPriceComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
