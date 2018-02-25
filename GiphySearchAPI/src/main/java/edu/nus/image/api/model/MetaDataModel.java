package edu.nus.image.api.model;

public class MetaDataModel {

	public MetaDataModel(Integer totalRecords, Integer pageSize, Integer currentPage) {
		this.totalRecords = totalRecords;
		this.pageSize = pageSize;
		this.currentPage = currentPage;
	}

	private Integer totalRecords;
	private Integer pageSize;
	private Integer currentPage;

	public Integer getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(Integer totalRecords) {
		this.totalRecords = totalRecords;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
}
