import { Component } from '@angular/core';
import {Router} from "@angular/router";

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent {
  constructor(private router: Router) {
  }

  public goToAboutUsPage() {
    this.router.navigate(["about"])
  }

  public goToHomePage() {
    this.router.navigate(["home"])
  }

  public goToRegisterPage() {
    this.router.navigate(["/user/auth/register"]);
  }

  public goToLoginPage() {
    this.router.navigate(["/user/auth/login"]);
  }
}
