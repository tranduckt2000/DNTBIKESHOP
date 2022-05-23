package shop.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.entity.Bicycle;

@Transactional
@Service("manageBicycleDAO")
public class ManageBicycleDAO {
	@Autowired
	SessionFactory factory;
	public List<Bicycle> getListBicycle() {
		Session session;
		try {
			session = factory.getCurrentSession();
		} catch (Exception e) {
			session = factory.openSession();
		}
		String hql = "FROM Bicycle";
		Query query = session.createQuery(hql);
		List<Bicycle> list = query.list();
		return list;
	}
	
	
	public Boolean save(Bicycle f) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Boolean result = true;
		try {
			session.save(f);
			t.commit();
			result = true;
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			result = false;
			System.out.print("Save: "+e);
		}finally {
			session.close();
		}
		return result;
	}
	
	public Boolean update(Bicycle f) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Boolean result = true;
		try {
			session.update(f);
			t.commit();
			result = true;
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			result = false;
			System.out.print("Update: "+e);
		}finally {
			session.close();
		}
		return result;
	}
	
	public Bicycle getBicycleById(String id) {
		Session session ;
		try {
			session = factory.getCurrentSession();
		} catch (Exception e) {
			// TODO: handle exception
			session = factory.openSession();
		}
		Bicycle f = null;
		try {
			f = (Bicycle) session.get(Bicycle.class, Integer.parseInt(id));
		} catch (Exception e) {
			System.out.print("Error find Bicycle with id =" + id );
		}
		return f;
	}
	
	public Boolean delete(Bicycle f) {
		Session session  = factory.openSession();;
		Boolean res = true;
		Transaction t = session.beginTransaction();
		try {
			session.delete(f);
			t.commit();
			res = true;
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			res = false;
		}finally {
			session.close();
		}
		return res;
	}
	
	public List<Bicycle> search(String name) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bicycle where name LIKE :name";
		Query query = session.createQuery(hql);
		query.setParameter("name", "%" + name + "%");
		List<Bicycle> list = query.list();
		return list;
	}
}
