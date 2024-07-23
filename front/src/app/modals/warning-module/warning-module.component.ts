import { Component } from '@angular/core';
import {MatDialogRef} from "@angular/material/dialog";

@Component({
  selector: 'app-warning-module',
  templateUrl: './warning-module.component.html',
  styleUrls: ['./warning-module.component.css']
})
export class WarningModuleComponent {
  constructor(public dialogRef: MatDialogRef<WarningModuleComponent>) {}

  close(): void {
    this.dialogRef.close();
  }
}
