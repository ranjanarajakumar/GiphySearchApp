package edu.nus.image.api.dao;

import java.util.List;

import edu.nus.image.api.model.ImageModel;

public interface ImageDAO {

	void create(ImageModel image);

	List<ImageModel> findByUserId(String userId);
}
