import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {HttpClientModule} from "@angular/common/http";
import {FormsModule} from "@angular/forms";
import { HeaderComponent } from './components/header/header.component';
import { MainComponent } from './components/main/main.component';
import { AboutComponent } from './components/about/about.component';
import { ServiceComponent } from './components/service-page/service.component';
import { UserPriceComponent } from './components/user-price/user-price.component';
import { UserRegisterComponent } from './components/user-register/user-register.component';
import { FooterComponent } from './components/footer/footer.component';
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import { AddressComponent } from './components/address/address.component';
import { MapComponent } from './components/map/map.component';
import { ProfileComponent } from './components/profile/profile.component';
import { LoginComponent } from './components/login/login.component';
import { ImageExampleComponent } from './components/image-example/image-example.component';
import { UserPreviewComponent } from './components/user-preview/user-preview.component';
import { AddServiceComponent } from './components/add-service/add-service.component';
import { LoadingAnimComponent } from './components/loading-anim/loading-anim.component';
import {MatDialogModule} from "@angular/material/dialog";
import { WarningModuleComponent } from './modals/warning-module/warning-module.component';
import { UserLocationComponent } from './components/user-location/user-location.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    MainComponent,
    AboutComponent,
    ServiceComponent,
    UserPriceComponent,
    UserRegisterComponent,
    FooterComponent,
    AddressComponent,
    MapComponent,
    ProfileComponent,
    LoginComponent,
    ImageExampleComponent,
    UserPreviewComponent,
    AddServiceComponent,
    LoadingAnimComponent,
    WarningModuleComponent,
    UserLocationComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    BrowserAnimationsModule,
    MatDialogModule
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
