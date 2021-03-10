package dao;

import java.util.List;

import entity.Customer;
import entity.QueryCustomer;

public interface CustomerDao {
	public List<Customer> queryAll();
	public List<Customer> queryLike(QueryCustomer qc); // 根据条件查询分页数据
	public int queryCount(QueryCustomer qc); // 根据条件查询分页总条数
	public Customer queryById(int id);
	public int update(Customer c);
	public int deleteById(int id);
	public int add(Customer c);
}
