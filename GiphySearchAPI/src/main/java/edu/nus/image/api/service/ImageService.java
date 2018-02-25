package edu.nus.image.api.service;

import java.util.List;

import edu.nus.image.api.model.ImageModel;

public interface ImageService {
	void createImage(ImageModel image);
	List<ImageModel> getImages(final String userName);	
}
