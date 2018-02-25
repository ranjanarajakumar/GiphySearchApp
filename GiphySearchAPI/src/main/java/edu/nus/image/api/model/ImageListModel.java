package edu.nus.image.api.model;

import java.util.ArrayList;
import java.util.List;

public class ImageListModel {

	public ImageListModel(List<ImageModel> images, MetaDataModel metaData) {
		super();
		this.images = images;
		this.metaData = metaData;
	}

	private List<ImageModel> images = new ArrayList<>();
	private MetaDataModel metaData;

	public List<ImageModel> getImages() {
		return images;
	}

	public void setImages(List<ImageModel> images) {
		this.images = images;
	}

	public MetaDataModel getMetaData() {
		return metaData;
	}

	public void setMetaData(MetaDataModel metaData) {
		this.metaData = metaData;
	}

}
