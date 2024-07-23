import { trigger, state, style, animate, transition } from '@angular/animations';

export const fadeInOutAnimation = trigger('fadeInOut', [
  state('void', style({
    opacity: 0,
    height: 0,
  })),
  transition(':enter, :leave', [
    animate('500ms ease-in-out')
  ])
]);
