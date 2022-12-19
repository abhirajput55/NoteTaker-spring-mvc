package com.dao.imp;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.UserDaoInt;
import com.entity.User;

@Repository("userDaoInt")
public class UserDaoImp implements UserDaoInt{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	@Transactional
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		System.out.println(user + " user dao imp");
		
		int Uid = (Integer) hibernateTemplate.save(user);
		
		if(Uid > 0)
			return true;
		
		return false;
	}
	
	
	@SuppressWarnings("unchecked")
	public User getUserDetailsByEmailAndPassword(String emailId, String passWord) {
		// TODO Auto-generated method stub
		
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("emailId", emailId));
		detachedCriteria.add(Restrictions.eq("passWord", passWord));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return findByCriteria.get(0);
		else
			
		return null;
	}
	
	

}
