package edu.nus.image.api.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import edu.nus.image.api.model.ImageModel;

@Repository
public class ImageDAOImpl implements ImageDAO {

	private final String INSERT_SQL = "INSERT INTO images(id, type, title, url, size, user) values(?,?,?,?,?,?)";
	private final String FETCH_SQL_BY_USER_ID = "select * from images where user = ?";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void create(final ImageModel image) {
		jdbcTemplate.update(new PreparedStatementCreator() {
			@Override
			public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
				PreparedStatement ps = connection.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, image.getId());
				ps.setString(2, image.getType());
				ps.setString(3, image.getTitle());
				ps.setString(4, image.getUrl());
				ps.setString(5, image.getSize());
				ps.setString(6, image.getUser());
				return ps;
			}
		});
	}

	@Override
	public List<ImageModel> findByUserId(String userId) {
		return jdbcTemplate.query(FETCH_SQL_BY_USER_ID, new Object[] { userId }, new ImageMapper());
	}

}

class ImageMapper implements RowMapper<ImageModel> {
	@Override
	public ImageModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		ImageModel image = new ImageModel();
		image.setId(rs.getString("id"));
		image.setSize(rs.getString("size"));
		image.setTitle(rs.getString("title"));
		image.setType(rs.getString("type"));
		image.setUrl(rs.getString("url"));
		image.setUser(rs.getString("user"));
		return image;
	}

}
