package business;

import javax.persistence.EntityManager;

import model.Utente;
import utility.JPAUtil;

public class SignupManager {
	
	public boolean signup(String username, String password, String email, int nazionalita) {
		
		boolean _return = false;

		EntityManager em =  JPAUtil.getInstance().getEmf().createEntityManager();
		
		Utente check = em.find(Utente.class, username);
		
		if(check == null) {
			check = new Utente();
			check.setUsername(username);
			check.setPassword(password);
			check.setEmail(email);
				
			em.getTransaction().begin();
			em.persist(check);
			em.getTransaction().commit();
				
			_return = true;
		} 
		em.close();
		return _return;
	}
}
