import {Component, Input} from '@angular/core';

@Component({
  selector: 'app-loading-anim',
  templateUrl: './loading-anim.component.html',
  styleUrls: ['./loading-anim.component.css']
})
export class LoadingAnimComponent {
  @Input() isLoading: boolean = false;
}
