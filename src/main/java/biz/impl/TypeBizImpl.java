package biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import biz.TypeBiz;
import dao.TypeDao;
import entity.Type;
@Service
public class TypeBizImpl implements TypeBiz{
	@Resource
	private TypeDao dao;
	public List<Type> queryByType(String type){
		return dao.queryByType(type);
	}
}
