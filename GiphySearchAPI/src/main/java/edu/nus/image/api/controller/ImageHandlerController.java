package edu.nus.image.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.nus.image.api.model.ImageModel;
import edu.nus.image.api.service.ImageService;

@CrossOrigin
@RestController
@RequestMapping("/favourite/images")
public class ImageHandlerController {

	@Autowired
	private ImageService imageService;
	
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Void> addImage(@RequestBody ImageModel imageModel) {
		this.imageService.createImage(imageModel);
		return new ResponseEntity<Void>(HttpStatus.CREATED);
	}
	
	@RequestMapping(path="/{userName}", method = RequestMethod.GET)
	public List<ImageModel> getImages(@PathVariable("userName") String userName) {
		return this.imageService.getImages(userName);
	}

}
