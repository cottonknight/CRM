package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.CustomerBiz;
import biz.ManagersBiz;
import biz.TypeBiz;
import entity.Customer;
import entity.Managers;
import entity.QueryCustomer;
import entity.Type;

@Controller
@RequestMapping("crm")
public class CRMAction {
	@Resource
	private TypeBiz typebiz;
	@Resource
	private CustomerBiz cusbiz;
	@Resource
	private ManagersBiz mbiz;
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(Managers m,Model model) {
		if(m!=null) {
			if(mbiz.login(m)) {			
				return queryCrmList(null, model);
			}
		}
			
		model.addAttribute("msg","登录失败！用户名或密码错误");
		return "login";
	}
	@RequestMapping("list")
	public String queryCrmList(QueryCustomer qc,Model model) {
		List<Type> hangyelist = typebiz.queryByType("所属行业"); 
		List<Type> jibielist = typebiz.queryByType("客户级别"); 
		if(qc!=null) {
			List<Customer> customerlist = cusbiz.queryLike(qc);
			model.addAttribute("customerlist",customerlist);
			model.addAttribute("qc",qc);
		}	
		model.addAttribute("industryType",hangyelist);
		model.addAttribute("levelType",jibielist);	
		return "index";
	}
	@RequestMapping(value="querylist",method=RequestMethod.POST)
	public String queryLike(QueryCustomer qc,Model model) {
		List<Customer> cuslist = cusbiz.queryLike(qc);
		model.addAttribute("customerlist",cuslist);
		return "index";
	}
	@RequestMapping("add")
	@ResponseBody
	public int addCustomer(Customer c) {
		int result = cusbiz.add(c);
		return result;
	}
	@RequestMapping(value="edit")
	@ResponseBody
	public Customer queryCustomerById(int id) {
		Customer c = cusbiz.queryById(id);
		return c;
	}
	@RequestMapping("update")
	@ResponseBody
	public int updateCustomer(Customer c) {
		int result = cusbiz.update(c);
		return result;
	}
	@RequestMapping("delete")
	@ResponseBody
	public int delete(int id) {
		return cusbiz.deleteById(id);
	}
}
