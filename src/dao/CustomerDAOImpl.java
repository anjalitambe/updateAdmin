package dao;

import java.util.Date;
import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



import model.Customer;
import model.EMICard;
import model.User;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	private static final Logger logger = 			
			LoggerFactory.getLogger(CustomerDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	
	
	
	@Override
	public void addCustomer(Customer customer) {
		System.out.println("Adding customer in dao");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		//customer - has users,address
		//insert the users,address
		//customer.getUsers().setEnabled(true);	
		session.save(customer);

		
		tx.commit();
		//session.flush();
		session.close();
	}

	@Override
	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
	List<Customer> customerList = session.createQuery("from Customer").list();
		//List<Customer> customerList = session.createQuery("select customerId from Customer c, EMICard e where c.card_cardid = e.cardid").list();
		tx.commit();
		session.close();
		return customerList;
	}
	
	//@Override
//	public List<>getEMICardTypeCustomer() {//naya wala!
//		Session session = sessionFactory.openSession();
//	//	List<Customer> customerList = session.createQuery("from Customer").list();
//		Query customerList = session.createQuery("select cardType from Customer c, EMICard e where c.CARD_CARDID = e.cardID");
//		Lis
//		return customerList;
//	}
	
	

	@Override
	public Customer getCustomerByemailId(String emailId) {
		
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		System.out.println("hello");
		Customer p = (Customer) session.load(Customer.class, new String(emailId));
		System.out.println(p);
		logger.info("Customer loaded successfully, Customer details=" + p);
		tx.commit();
		session.close();
		return p;
		
//		
//		Session session = sessionFactory.openSession();
//		Query query = session.createQuery("from customer where emailId=?");
//		query.setString(0, emailId);
//		Customer customer  = (Customer)query.uniqueResult();
//		customer.getCustomer();
//		return customer;
	}



	@Override
	public boolean verifyUser(String username, String password) {
		Session session = this.sessionFactory.openSession();
		String query="select email, password from Customer where Email=:username and Password=:password";
		Query q=session.createQuery(query);
		q.setString("username", username);
		q.setString("password", password);
		List<Customer> l = q.list();
		
		if(l.size()==0)
		{
			return false;
		}
		
		session.close();
		
		return true;
	}

	@Override
	public void delCustomer(Customer customer) {
		// TODO Auto-generated method stub
		System.out.println("Adding customer in dao");
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		//customer - has users,address
		//insert the users,address
		//customer.getUsers().setEnabled(true);	
		//session.save(customer);
		session.delete(customer);
		
		tx.commit();
		//session.flush();
		session.close();
		
	}



	@Override
	public Customer getCustomerById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Customer c = (Customer) session.load(Customer.class, new Integer(id));
		logger.info("Customer loaded successfully, Customer details=" + c);
		tx.commit();
		return c;
	}



	@Override
	public void updateCustomer(Customer c) {
		// TODO Auto-generated method stub
		Session session = 
				this.sessionFactory
				.getCurrentSession();
		session.update(c);
		logger.info("Customer updated successfully, "
				+ "Customer Details=" + c);
	}


//used for login session
	@Override
	public Customer getCustomer(String email, String password) {//new code
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		String query = "from Customer a where a.email=:email and a.password=:password";
		Query q = session.createQuery(query);
		 q.setString("email", email);
		  q.setString("password", password);
		  List<Customer> l=q.list();

		if (l.size() == 0) {
			return null;
		}
		Customer customer = (Customer) l.get(0);
		session.close();
		return customer;
	}



	@Override
	public String getEMICardTypeCustomer() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void editCustomer(Customer customer)
		//	, Date validDate)
{
		
//		Session session = sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		session.update(customer);
//		System.out.println("customer updated successfully");
//		tx.commit();
//		session.flush();
//		session.close();
//		
		
//		// TODO Auto-generated method stub
//
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		EMICard card = customer.getCard();
	//card.setValidDate(validDate);
//		Customer logcustomer = (Customer)session.get(Customer.class, customer);
//		logcustomer.setCard(card);
//		boolean activ=customer.getActivated2();
//		logcustomer.setActivated2(activ);
		//session.saveOrUpdate(logcustomer);
		session.saveOrUpdate(customer);
		System.out.println("customer updated successfully");
		//Customer customer1 = 
     //(Customer)session.get(Customer.class, customer); 
		//customer1.setCard(card);
    // session.update(customer1); 
		tx.commit();
		session.flush();
		session.close();
	}



	@Override
	public void deleteCustomer(int customerId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Customer customer = (Customer) session.get(Customer.class, customerId);
		session.delete(customer);
		System.out.println("Customer deleted successfully");
		tx.commit();
		session.flush();
		session.close();
	}



	@Override
	public void activateCustomer(int id) {
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("above query");
		System.out.println("this is"+id);

		
		String query="update Customer c set c.activated2='accepted' where c.customerId=:customerId";
		System.out.println("inside update queryyy");
		Query q=session.createQuery(query);	
		q.setInteger("customerId", id);
		
		q.executeUpdate();
		System.out.println("exeupdate"+q.executeUpdate());
		tx.commit();
	}
	
}
