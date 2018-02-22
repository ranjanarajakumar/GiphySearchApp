import {Injectable} from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from '@angular/common/http';
import {Observable} from 'rxjs/Observable';
import {GiphyResponseModel} from '../model/giphy.response.model';

@Injectable()
export class RestApiService {
  constructor(public http: HttpClient) {}

  public get(searchKeyword: string): Observable<GiphyResponseModel> {
    const SEARCH_API_URL = 'https://api.giphy.com/v1/gifs/search';
    let httpHeaders = new HttpHeaders()
      .set('Content-Type', 'application/json');
    let httpParams = new HttpParams()
      .set('limit', '25')
      .set('offset', '0')
      .set('api_key', '3lzUw4K3Tuv4HqK43F03cR2fPb46R9MI')
      .set('q', searchKeyword);
    return this.http.get<GiphyResponseModel>(SEARCH_API_URL, {headers: httpHeaders, params: httpParams, responseType: 'json'});
  }
}
