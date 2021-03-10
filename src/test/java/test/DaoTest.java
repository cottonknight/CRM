package test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.CustomerDao;
import entity.Customer;
import entity.QueryCustomer;
import entity.Type;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class DaoTest {
	@Resource
	private CustomerDao cdao;
	
	@Test
	public void queryLike() {
		QueryCustomer c = new QueryCustomer("a",4,9);
		List<Customer> list = cdao.queryLike(c);
		for(Customer cus : list) {
			System.out.println(cus);
		}
			
	}
}
