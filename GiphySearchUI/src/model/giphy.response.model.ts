import {PaginationModelModel} from './pagination.model';
import {MetadataModel} from './metadata.model';
import {ImageDetailModel} from './image.detail.model';

export class GiphyResponseModel {
  data: ImageDetailModel[];
  pagination: PaginationModelModel;
  meta: MetadataModel;
}
