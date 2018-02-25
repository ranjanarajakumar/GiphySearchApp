package edu.nus.image.api.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.nus.image.api.dao.ImageDAO;
import edu.nus.image.api.model.ImageModel;

@Service
public class ImageServiceImpl implements ImageService {
	@Autowired
	private ImageDAO imageDAO;
 
	@Override
	public void createImage(ImageModel image) {
		this.imageDAO.create(image);
	}

	@Override
	public List<ImageModel> getImages(final String userId) {
		return this.imageDAO.findByUserId(userId);
	}

}
