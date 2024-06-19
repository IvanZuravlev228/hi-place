import {Component, OnInit} from '@angular/core';
import {Router} from "@angular/router";
import {environment} from "../environment/environment";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  constructor(private router: Router) {
  }

  ngOnInit(): void {
    // this.router.navigate(["user/profile"], {
    //   queryParams: {
    //     userId: 1
    //   }
    // });

    this.router.navigate(["services/add"], {
      queryParams: {
        userId: 1
      }
    })
    // this.router.navigate(["/test"]);
  }
}
