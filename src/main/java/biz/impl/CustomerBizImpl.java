package biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import biz.CustomerBiz;
import dao.CustomerDao;
import entity.Customer;
import entity.QueryCustomer;
@Service
public class CustomerBizImpl implements CustomerBiz{
	@Resource
	private CustomerDao dao;
	public List<Customer> queryAll(){
		return dao.queryAll();
	}
	@Override
	public List<Customer> queryLike(QueryCustomer qc) {
		int size = qc.getRows(); // 一页条数
		int page = qc.getPage(); // 当前页数
		int count = dao.queryCount(qc); //总条数
		count = count%size==0?count/size:count/size+1; // 总页数
		if(count==0) {
			return null;
		}
		page=page<1?1:page;
		page=page>count?count:page;
		qc.setPage(page);
		qc.setStart((page-1)*size);
		qc.setPageCount(count);
		qc.setNext(page+1);
		qc.setLast(page-1);
		return dao.queryLike(qc);
	}
	@Override
	public Customer queryById(int id) {
		
		return dao.queryById(id);
	}
	@Override
	public int update(Customer c) {
		return dao.update(c);
	}
	@Override
	public int deleteById(int id) {
		return dao.deleteById(id);
	}
	@Override
	public int add(Customer c) {
		return dao.add(c);
	}
	
}
