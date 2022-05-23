package shop.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Bicycle;
import shop.entity.ShopCart;

@Transactional
@Service("bicycleDao")
public class BicycleDAO {
	@Autowired
	 SessionFactory factory;

	public List<Bicycle> getListBicycle() {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Bicycle";
			Query query = session.createQuery(sql);
			List<Bicycle> listBicycle = query.list();
			System.out.println("ok");
			return listBicycle;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();

	}
	public Bicycle getBicycleById(int id) {
		Bicycle bicycle = null;
		Session session = factory.getCurrentSession();
		try {
			bicycle = (Bicycle) session.get(Bicycle.class, id);
		} catch (Exception e) {
			System.out.print("errors" + e.getMessage());
		}
		return bicycle;
	}
	
	public List<Bicycle> getBicycleByName(String text) {
		Session session = factory.getCurrentSession();
		try {
			String sql = "FROM Bicycle f where f.name like :text";
			Query query = session.createQuery(sql).setParameter("text","%"+text+"%");
			List<Bicycle> listFlo = query.list();
			System.out.println("ok");
			return listFlo;
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("error"+e.getMessage());
		}
		return new ArrayList<>();
	}
	
	
	//create or update
	public String CreateOrUpate(Bicycle bicycle) {
		// Notify notify;
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.saveOrUpdate(bicycle);
			t.commit();
			return "successfully!";
		} catch (Exception e) {
			t.rollback();
			return "fail!";
		} finally {
			session.close();
		}
	}
	
}
