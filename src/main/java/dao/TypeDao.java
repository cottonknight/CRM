package dao;

import java.util.List;

import entity.Type;

public interface TypeDao {
	public List<Type> queryByType(String type);
}
