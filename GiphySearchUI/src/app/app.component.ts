import { Component } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { forkJoin } from 'rxjs/observable/forkJoin';
import {RestApiService} from './rest.api.service';
import {GiphyResponseModel} from '../model/giphy.response.model';
import {ImageDetailModel} from '../model/image.detail.model';
import {FavouriteImageRequestModel} from '../model/favourite.image.request.model';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  totalCount: number = 0;
  pageSize: number = 10;

  isImageLoading: boolean = false;
  response: GiphyResponseModel = new GiphyResponseModel();
  constructor(private restApiService: RestApiService) {}
  title = 'Image Handler';
  searchKeyWord: string;
  userName: string;
  isMandatoryFilled: boolean = true;

  public displayImages() {
    this.isMandatoryFilled = true;
    if(this.userName && this.searchKeyWord && this.pageSize) {
      this.isImageLoading = true;
      this.fetchImages();
    } else {
      console.info("empty ....");
      this.isMandatoryFilled = false;

    }
  }

  private fetchImages() {
    let favourites: FavouriteImageRequestModel[] = [];
    let favouriteSubscribe = this.restApiService.getFavourites(this.userName);
    let searchResultSubscribe = this.restApiService.get(this.searchKeyWord, this.pageSize, 1);
    let exists: boolean;
    forkJoin([favouriteSubscribe, searchResultSubscribe]).subscribe(results => {
      favourites = results[0];
      this.response =  results[1];
      for(let image of this.response.data) {
        exists = false;
        for(let fav of favourites) {
          if(image.id === fav.id) {
            exists = true;
          }
        }
        if(exists) {
          image.favouriteIcon = '/assets/images/favouriteicon.png';
        } else {
          image.favouriteIcon = '/assets/images/addicon.jpg';
        }
      }
      this.isImageLoading = false;
      this.totalCount = this.response.pagination.total_count;
    });
  }

  public reset() {
    this.userName = null;
    this.searchKeyWord = null;
    this.response = new GiphyResponseModel();
  }

  public addToFavourite(imageDetail: ImageDetailModel) {
    this.restApiService.addToFavourite(
      new FavouriteImageRequestModel(this.userName, imageDetail.id, imageDetail.type
        , imageDetail.title, imageDetail.images['downsized']['url']
        , imageDetail.images['downsized']['size'])).subscribe(
      res => {
        imageDetail.favouriteIcon = '/assets/images/favouriteicon.png';
        console.log(res);
      }
    );
  }
}
