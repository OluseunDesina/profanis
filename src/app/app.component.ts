import { Component } from '@angular/core';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-root',
  template: `
  <p>
    {{title}}
  </p>`
})
export class AppComponent {
  title = environment.API_KEY;

}
