import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent {

  num1 = 10;
  num2 = 20;
  result = 0;

  add() {
    this.result = this.num1 + this.num2;   // Put breakpoint here
    console.log(this.result);
  }
}
