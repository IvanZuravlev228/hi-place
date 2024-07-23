import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {MainComponent} from "./components/main/main.component";
import {AboutComponent} from "./components/about/about.component";
import {ServiceComponent} from "./components/service-page/service.component";
import {UserRegisterComponent} from "./components/user-register/user-register.component";
import {ProfileComponent} from "./components/profile/profile.component";
import {AddServiceComponent} from "./components/add-service/add-service.component";
import {FooterComponent} from "./components/footer/footer.component";
import {ConfirmEmailComponent} from "./components/confirm-email/confirm-email.component";

const routes: Routes = [
  {path: '', component: MainComponent},
  {path: 'home', component: MainComponent},
  {path: 'about', component: AboutComponent},
  {path: 'services', component: ServiceComponent},
  {path: 'register/user', component: UserRegisterComponent},
  {path: 'user/profile', component: ProfileComponent},
  {path: 'services/add', component: AddServiceComponent},
  {path: 'footer', component: FooterComponent},
  {path: 'confirm-email', component: ConfirmEmailComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
