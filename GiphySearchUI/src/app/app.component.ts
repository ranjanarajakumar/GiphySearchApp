import { Component } from '@angular/core';
import {RestApiService} from './rest.api.service';
import {GiphyResponseModel} from '../model/giphy.response.model';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  response: GiphyResponseModel = new GiphyResponseModel();
  constructor(private restApiService: RestApiService) {}
  title = 'app';
  searchKeyWord: string;
  public displayImages() {
    this.restApiService.get(this.searchKeyWord).subscribe(
      res => {
        this.response =  res;
        console.log(this.response);
      }
    );
  }
}
