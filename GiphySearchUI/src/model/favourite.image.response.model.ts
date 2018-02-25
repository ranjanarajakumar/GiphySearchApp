export class FavouriteImageRequestModel {
  constructor(id: string, type: string, title: string, url: string, size: string) {
    this.id = id;
    this.type = type;
    this.title = title;
    this.url = url;
    this.size = size;
  }
  id: string;
  type: string;
  title: string;
  url: string;
  size: string;
}
