package biz;

import java.util.List;

import entity.Type;

public interface TypeBiz {
	public List<Type> queryByType(String type);
}
