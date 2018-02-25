import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from '@angular/common/http';
import {Observable} from 'rxjs/Observable';
import {GiphyResponseModel} from '../model/giphy.response.model';
import {FavouriteImageRequestModel} from '../model/favourite.image.request.model';

@Injectable()
export class RestApiService {
  private FAVOURITE_IMAGE_API_URL = 'http://localhost:8080/favourite/images';
  constructor(public http: HttpClient) {}
  private httpHeaders = new HttpHeaders()
    .set('Content-Type', 'application/json');
  public get(searchKeyword: string, pageSize: number, currentPageNo: number): Observable<GiphyResponseModel> {
    const SEARCH_API_URL = 'https://api.giphy.com/v1/gifs/search';
    const httpParams = new HttpParams()
      .set('limit', pageSize.toString())
      .set('offset', currentPageNo.toString())
      .set('api_key', '3lzUw4K3Tuv4HqK43F03cR2fPb46R9MI')
      .set('q', searchKeyword);
    return this.http.get<GiphyResponseModel>(SEARCH_API_URL, {headers: this.httpHeaders, params: httpParams, responseType: 'json'});
  }


  public addToFavourite(favouriteImageRequestModel: FavouriteImageRequestModel): Observable<any> {
    return this.http.post(this.FAVOURITE_IMAGE_API_URL, favouriteImageRequestModel
      , {headers: this.httpHeaders, responseType: 'json'});
  }

  public getFavourites(userName: string): Observable<FavouriteImageRequestModel[]> {
    return this.http.get<FavouriteImageRequestModel[]>((this.FAVOURITE_IMAGE_API_URL + '/' + userName)
      , {headers: this.httpHeaders, responseType: 'json'});
  }
}
