import { Component } from '@angular/core';
import {UserRequest} from "../../models/UserRequest";
import {HttpEventType, HttpResponse} from "@angular/common/http";
import {UploadFileService} from "../../services/upload-file.service";
import {UserService} from "../../services/user.service";
import {fadeInOutAnimation} from "./animation";

@Component({
  selector: 'app-user-register',
  templateUrl: './user-register.component.html',
  styleUrls: ['./user-register.component.css'],
  animations: [fadeInOutAnimation]
})
export class UserRegisterComponent {
  createUserRequest: UserRequest = new UserRequest();

  selectedFiles?: FileList;
  messageAboutFile = '';
  messageAboutEmail: string = "Обязательное поле";

  isCorrectPhoneNumber: boolean = true;
  isSuccessfullyUploadedUserLogo: boolean = true;
  isEmailCorrect: boolean = true;
  showLinks = false;

  constructor(private uploadService: UploadFileService,
              private userService: UserService) { }

  public onSubmit() {
    if (!this.checkCorrectInputLogoFile()) {
      this.messageAboutFile = "Максимальный размер файла 10 МБ";
      return;
    }

    if (!this.checkEmail(this.createUserRequest.email)) {
      this.isEmailCorrect = false;
      return;
    }

    this.isEmailCorrect = true;
    if(!this.checkPhoneNumber(this.createUserRequest.phone)) {
      console.log("Phone number is not correct");
      this.isCorrectPhoneNumber = false
      return;
    }
    console.log("Phone number IS correct");

    this.isCorrectPhoneNumber = true;

    console.log("sending request for new user...");
    this.createUser(this.createUserRequest);

  }

  public createUser(user: UserRequest) {
    this.userService.createUser(user).subscribe({
      next: (newUser) => {
        this.uploadUserLogoFile(newUser.id);
      },
      error: (error) => {
        console.log(error);
        console.log(error.status);
        if (error.status === 409) {
          this.messageAboutEmail = "Пользователь с такой почтой уже существует";
        }
      }
    })
  }

  public selectFile(event: any): void {
    this.messageAboutFile = "";
    this.selectedFiles = event.target.files;
  }

  public uploadUserLogoFile(userId: number) {
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);
      if (file) {
        this.uploadService.uploadUserLogo(file, userId).subscribe({
          next: (event) => {
            if (event.type === HttpEventType.UploadProgress) {
              const total = event.total ? event.total : 1;
              this.messageAboutFile = (Math.round(100 * event.loaded / total)).toString() + "%";
            } else if (event instanceof HttpResponse) {
              this.messageAboutFile = event.body;
            }
            this.isSuccessfullyUploadedUserLogo = true;
          },
          error: (error) => {
            console.log(error);
            this.isSuccessfullyUploadedUserLogo = false;
          }
        })
      }
    }
  }

  private checkPhoneNumber(input: string): boolean {
    const phoneNumberPattern: RegExp = /^[\+]?3?[\s]?8?[\s]?\(?0\d{2}?\)?[\s]?\d{3}[\s|-]?\d{2}[\s|-]?\d{2}$/;
    return phoneNumberPattern.test(input);
  }

  private checkEmail(input: string): boolean {
    const emailPattern: RegExp = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(input);
  }


  private checkCorrectInputLogoFile(): boolean {
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);
      if (file && file.size / (1024 * 1024) < 10) {
        console.log(file.size / (1024 * 1024));
        return true;
      }
    }
    return false;
  }
}
