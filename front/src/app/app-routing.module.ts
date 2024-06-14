import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {AppComponent} from "./app.component";
import {MainComponent} from "./components/main/main.component";
import {AboutComponent} from "./components/about/about.component";
import {ServiceComponent} from "./components/service/service.component";
import {UserPriceComponent} from "./components/user-price/user-price.component";
import {UserRegisterComponent} from "./components/user-register/user-register.component";
import {ProfileComponent} from "./components/profile/profile.component";
import {LoginComponent} from "./components/login/login.component";

const routes: Routes = [
  {path: '', component: AppComponent},
  {path: 'home', component: MainComponent},
  {path: 'about', component: AboutComponent},
  {path: 'services', component: ServiceComponent},
  {path: 'services/user/price', component: UserPriceComponent},
  {path: 'register/user', component: UserRegisterComponent},
  {path: 'user/profile', component: ProfileComponent},
  {path: 'test', component: LoginComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
