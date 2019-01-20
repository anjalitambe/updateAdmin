package controllers;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.Address;
import model.Admin;

import model.Customer;
import model.EMICard;
import service.AdminService;
import service.CustomerService;


@Controller
@SessionAttributes(value = "sessionuser")
public class MainController {
	private CustomerService customerService;
	//private UserService userService;
	private AdminService adminService;

	public CustomerService getCustomerService() {
		return customerService;
	}
	@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@Autowired
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}


	
	
	// FOR LOGIN AND LOGIN FORM
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String indexes() {
		return "login";
	}
	
	
		/*i changed here!!!!!!!!!*/
		@RequestMapping(value = "/LoginForms", method = RequestMethod.POST)
		public ModelAndView loginpro1(HttpServletRequest request, HttpServletResponse response,
				HttpSession session,	@ModelAttribute("login") Customer u, BindingResult result, Model model, EMICard e) {
			ModelAndView mav = null;
			String username=request.getParameter("email");
			String password=request.getParameter("password");
			System.out.println("Username is: "+ username+ " Password is: "+password);
			if(customerService.verifyUser(username,password))
			{
				mav = new ModelAndView("loginsuccess");
				Customer customer = customerService.getCustomer(username, password);//new code
				//whatever you want to display add here
				session.setAttribute("firstName", customer.getFirstName());//new code
				session.setAttribute("lastName", customer.getLastName());
				session.setAttribute("cardType", customer.getCard().getCardType());
				session.setAttribute("validDate",customer.getCard().getValidDate());
				//session.setAttribute("activated",customer.getCard().getActivated());OLD from EMICard
				session.setAttribute("activated2",customer.getActivated2());
				session.setAttribute("cardID",customer.getCard().getCardID());
				//session.setAttribute("validDate",customer.getCard().getCardID());
		
				session.setAttribute("balance",customer.getBank().getBalance());
//				session.setAttribute("credits",customer.getCard().getCredits());
//				session.setAttribute("remaingCredits",customer.getCard().getRemaingCredits());
//				
				int cred = customer.getCard().getCredits();
				int remaingCred = customer.getCard().getRemaingCredits();
				
				int usedCredits = cred - remaingCred;
				session.setAttribute("usedCredits", usedCredits);
				
				//session.setAttribute("credits",10);
				 //session.setAttribute("remaingCredits",5);
				
				//session.setAttribute("usedCredits",);
				//calculate used credits
				
				
				System.out.println("Username is: "+ username+ " Password is: "+password);
				
			}
			else
			{
				mav = new ModelAndView("loginerror");
			}
			return mav;
			}
		
//		BANASHREE'S CODE
//	@RequestMapping(value = "/LoginForms", method = RequestMethod.POST)
//	public ModelAndView loginpro(HttpServletRequest request, HttpServletResponse response,
//	@ModelAttribute("login") Customer u, BindingResult result, Model model) {
//		ModelAndView mav = null;
//		String username=request.getParameter("email");
//		String password=request.getParameter("password");
//		System.out.println("Username is: "+ username+ " Password is: "+password);
//		if(customerService.verifyUser(username,password))
//		{
//			mav = new ModelAndView("loginsuccess");   	
//		}
//		else
//		{
//			mav = new ModelAndView("loginerror");
//		}
//		return mav;
//		}
//	

	
	
	//FOR REGISTRATION AND REGISTRATION FORM
	@RequestMapping(value = "/RegisterSpring", method = RequestMethod.GET)
	public String regSpring(Model model) {
		model.addAttribute("customer",new Customer());
		return "register";
		}
	
	 @RequestMapping(value = "/RegisterFormsSpring", method = RequestMethod.POST)
	    public String validateregistrationPage1(@Valid @ModelAttribute("customer") Customer customer,
	    		BindingResult bindingResult,Model model) {
		 	System.out.println(customer);
		 	customer.getBank().setBalance(1000);
		 //	customer.getCard().setActivated(false);
		 	customer.setActivated2(false);
		 	System.out.println(customer);
		 	//System.out.println(customer);
		    customerService.addCustomer(customer);
		    return "regSuccess";
	 	}
	 

			
			@RequestMapping(value="/Logout",method = RequestMethod.GET)
			public String logout(HttpSession session){
				session.invalidate();

				return "logoutSucess";
			}
		
	 

			
			
//FOR ADMIN LOGIN 
			@RequestMapping(value = "/Admin", method = RequestMethod.GET)
			public String adminLog(Model model) {
				model.addAttribute("admin",new Admin());
				return "adminLogin";
				}
			
	
//FROM ADMIN LOGIN FORM
			
			@RequestMapping(value = "/AdminForms", method = RequestMethod.POST)
			public ModelAndView loginpro(HttpServletRequest request, HttpServletResponse response,
					@ModelAttribute("admin") Admin u, BindingResult result, Model model) {
						ModelAndView mav = null;
						String adminName=request.getParameter("adminName");
						String password=request.getParameter("password");
						//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
						if(adminService.verifyUser1(adminName,password))
						{
							//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
							mav = new ModelAndView("adminDashBoard");   	
							//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
						}
						else
						{
							//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
							mav = new ModelAndView("loginerror");
						}
						//System.out.println("Admin Username is: "+ adminName+ " Admin Password is: "+password);
						
						
					
//						adminService.verifyUser1(adminName,password);
//						mav = new ModelAndView("loginsuccess");   	
						return mav;
	
	}			
			//ADDING A customer
			@RequestMapping(value = "AddCustomer")
			public String getProductForm(Model model) {		
				model.addAttribute("customer",new Customer());
				return "addCustomer";
			}
			
			@RequestMapping(value = "addCustomerForms", method = RequestMethod.POST)
			public String addingProduct(@ModelAttribute("customer") @Valid Customer cust, BindingResult result,
				Model model) {
				customerService.addCustomer(cust);
				
				return "redirect:/ListCustomers";
				
			}
			
			//Editing a customer--THIS IS DESI JUGAAD
			@RequestMapping(value = "/admin/customer/editCustomer/{customerId}")
			public ModelAndView getEditForm(@PathVariable(value = "customerId") int customerId,
					//@PathVariable(value="validDate") Date validDate,
					HttpSession session) {//changed Integer datatype
				Customer customer= customerService.getCustomerById(customerId);
//				session.setAttribute("bank",customer.getBank());
			//	session.setAttribute("address",customer.getAddress());
//				
//               session.setAttribute("dob",customer.getDob());				
			//	this.customerService.editCustomer(customer);
						//validDate);
				System.out.println("ghhh");
				return new ModelAndView("editAdminCustomer", "editCustomerObj", customer);
			}
			
			
			@RequestMapping(value = "admin/customer/activatethisCustomer/{cust.customerId}")
			public ModelAndView getActivateCustForm(@PathVariable(value = "customerId") int customerId,
					//@PathVariable(value="validDate") Date validDate,
					HttpSession session) {//changed Integer datatype
				Customer customer= customerService.getCustomerById(customerId);
//	
				System.out.println("in activate cust controller");
				return new ModelAndView("adminActivateCustomer", "activateCustomerObj", customer);
			}
			@RequestMapping(value = "/trying2",method = RequestMethod.POST)
			public String trying2(@ModelAttribute("activateCustomerObj") Customer c,BindingResult r,HttpSession session) {
			//	System.out.println(r.toString());
				System.out.println("changed obj");
				System.out.println(r.toString());
				System.out.println(c);
				int id= c.getCustomerId();
//				boolean actstatus= c.getActivated2();
//				session.setAttribute("activated2", actstatus);
//				System.out.println("current status after edit"+actstatus);
//				
				customerService.activateCustomer(id);
			c.setAddress((Address) session.getAttribute("address"));
				
				//customerService.editCustomer(c,);
				return "redirect:/ListCustomers";
				
			}
			
			
			
			
			
			
			
			//list all customers
			@RequestMapping("ListCustomers") 
			public ModelAndView getAllCustomers() {
				//System.out.println("ABC");
				  List<Customer> customers = customerService.getAllCustomers(); 
				  System.out.println(customers);
				  //((EMICard) customers).getCardType();
				  
				  return new ModelAndView("adminCustomerList", "customers", customers);
				  }
			
			
			@RequestMapping(value = "/trying",method = RequestMethod.POST)
			public String trying(@ModelAttribute("editCustomerObj") Customer c,BindingResult r,HttpSession session) {
			//	System.out.println(r.toString());
				System.out.println("changed obj");
				System.out.println(r.toString());
				System.out.println(c);
				
//				boolean actstatus= c.getActivated2();
//				session.setAttribute("activated2", actstatus);
//				System.out.println("current status after edit"+actstatus);
//				
				customerService.editCustomer(c);
			c.setAddress((Address) session.getAttribute("address"));
				
				//customerService.editCustomer(c,);
				return "redirect:/ListCustomers";
				
			}
			
			//DELETING A PRODUCT BY ADMIN
			
			@RequestMapping("admin/customer/delete/{customerId}")
			public String deleteCustomer(@PathVariable(value = "customerId") Integer customerId) {
				customerService.deleteCustomer(customerId);
				
				return "redirect:/ListCustomers";
			}
			
			
//Verifying user ONLY through EMI CARD--kaisa hoga
			
			
			
//			//Verifying user through admin pojo
//			@RequestMapping("/accept/{customerId}") //should pass loanamount here?
//			public String acceptStatus(  @PathVariable("customerId") int customerId, Model model)
//			{
//				System.out.println("calling from inside accept customer");
//				List<Customer> c=iAdminService.fetchCustomerDetails(customerId);
//				
//
//			}
			
			
}
	
