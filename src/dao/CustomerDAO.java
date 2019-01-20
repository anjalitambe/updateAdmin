package dao;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import model.Customer;
@Repository
public interface CustomerDAO {
	
	void addCustomer(Customer customer);

	List<Customer> getAllCustomers();

	Customer getCustomerByemailId(String emailId);

	boolean verifyUser(String username, String password);

	//new code
	void delCustomer(Customer customer);//This MAY NOT be used
	public Customer getCustomerById(int id);
	void updateCustomer(Customer c);
	Customer getCustomer(String email, String password);

	String getEMICardTypeCustomer();
	
	void editCustomer(Customer p);
			//, Date d);
	void deleteCustomer(int customerId);//changed integer to int
	void activateCustomer(int id);
	
}
