import { Component } from '@angular/core';
import {UserRequest} from "../../models/UserRequest";
import {HttpEventType, HttpResponse} from "@angular/common/http";
import {UploadFileService} from "../../services/upload-file.service";
import {UserService} from "../../services/user.service";
import {fadeInOutAnimation} from "./animation";
import {Address} from "../../models/Address";
import {AddressService} from "../../services/address.service";
import {Router} from "@angular/router";

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
  messageAboutEmail: string = "Обов'язкове поле";

  isCorrectPhoneNumber: boolean = true;
  isSuccessfullyUploadedUserLogo: boolean = false;
  isSuccessfullySavedNewAddress: boolean = false;
  isLoading: boolean = false;
  isEmailCorrect: boolean = true;
  isAddressCorrect: boolean = false;

  showLinks: boolean = false;
  showAddress: boolean = false;

  public receivedAddresses: Address[] | null = null;

  constructor(private uploadService: UploadFileService,
              private userService: UserService,
              private addressService: AddressService,
              private router: Router) { }

  public onSubmit() {
    if (!this.checkCorrectInputLogoFile()) {
      this.messageAboutFile = "Максимальний розмір файлу 10 МБ";
      return;
    }

    if (!this.checkEmail(this.createUserRequest.email)) {
      // this.isEmailCorrect = false;
      return;
    }
    this.isEmailCorrect = true;

    if (!this.checkPhoneNumber(this.createUserRequest.phone)) {
      this.isCorrectPhoneNumber = false
      return;
    }
    this.isCorrectPhoneNumber = true;

    if (!this.checkAddressCorrect()) {
      this.isAddressCorrect = true;
      return;
    }
    this.isAddressCorrect = false;

    this.isLoading = true;
    console.log("sending request for new user...");
    this.createUser(this.createUserRequest);
  }

  public createUser(user: UserRequest) {
    this.userService.createUser(user).subscribe({
      next: (newUser) => {
        this.uploadUserLogoFile(newUser.id);

        if (this.receivedAddresses) {
          this.receivedAddresses.forEach(address => {
            address.userId = newUser.id;
            this.saveNewAddress(address);
          });
        }
      },
      error: (error) => {
        console.log(error);
        if (error.status === 409) {
          this.isLoading = false;
          this.messageAboutEmail = "Користувач із такою поштою вже існує";
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
            this.checkLoading(userId);
          },
          error: (error) => {
            console.log(error);
            this.isSuccessfullyUploadedUserLogo = false;
          }
        })
      }
    }
  }

  public onAddressSelected(addresses: Address[]) {
    this.receivedAddresses = addresses;
  }

  private saveNewAddress(address: Address) {
    this.addressService.saveNewAddress(address).subscribe({
      next: (address) => {
        this.isSuccessfullySavedNewAddress = true;
        this.checkLoading(address.userId);
      },
      error: (error) => {
        console.log(error);
        this.isSuccessfullySavedNewAddress = false;
      }
    })
  }

  private checkPhoneNumber(input: string): boolean {
    const phoneNumberPattern: RegExp = /^[\+]?3?[\s]?8?[\s]?\(?0\d{2}?\)?[\s]?\d{3}[\s|-]?\d{2}[\s|-]?\d{2}$/;
    return phoneNumberPattern.test(input);
  }

  private checkEmail(input: string): boolean {
    const emailPattern: RegExp = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    this.messageAboutEmail = "Пошта некоректна"
    return emailPattern.test(input);
  }


  private checkCorrectInputLogoFile(): boolean {
    if (this.selectedFiles) {
      const file: File | null = this.selectedFiles.item(0);
      if (file && file.size / (1024 * 1024) < 10) {
        return true;
      }
    }
    return false;
  }

  private checkAddressCorrect(): boolean {
    if (!this.receivedAddresses) {
      this.isSuccessfullySavedNewAddress = true;
    }
    return !!(this.receivedAddresses || this.createUserRequest.homeVisit);
  }

  private checkLoading(userId: number) {
    if (this.isSuccessfullyUploadedUserLogo && this.isSuccessfullySavedNewAddress) {
      this.isLoading = false;
      // this.routter.....
      this.router.navigate(["user/profile"], {
        queryParams: {
          userId: userId
        }
      })
    }
  }
}
