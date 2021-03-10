package biz.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import biz.ManagersBiz;
import dao.ManagersDao;
import entity.Managers;
@Service
public class ManagersBizImpl implements ManagersBiz{
	@Resource
	private ManagersDao dao;
	public boolean login(Managers m) {
		Managers man = dao.login(m);
		if(man!=null) {	
			return true;
		}
		return false;
	}
}
