import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {ConfirmEmailService} from "./confirm-email.service";

@Component({
  selector: 'app-confirm-email',
  templateUrl: './confirm-email.component.html',
  styleUrls: ['./confirm-email.component.css']
})
export class ConfirmEmailComponent implements OnInit{
  successVerified: boolean = true;

  constructor(private route: ActivatedRoute,
              private confirmService: ConfirmEmailService) {}

  ngOnInit(): void {
    this.route.queryParams.subscribe(params => {
      const token = params['token'];
      if (token) {
        this.confirmService.confirm(token).subscribe({
          next: () => {
            this.successVerified = true;
          },
          error: (error) => {
            this.successVerified = false;
            console.log(error);
          }
        });
      }
    });
  }
}
