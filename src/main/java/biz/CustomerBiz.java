package biz;

import java.util.List;

import entity.Customer;
import entity.QueryCustomer;

public interface CustomerBiz {
	public List<Customer> queryAll();
	public List<Customer> queryLike(QueryCustomer qc);
	public Customer queryById(int id);
	public int update(Customer c);
	public int deleteById(int id);
	public int add(Customer c);
}
