package application.dao;

import application.model.Account;

import javax.persistence.EntityManager;

import static application.App.EMFactory;

public class AccountDaoJPA implements AccountDao {

    @Override
    public Long add(Account account) {
        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();
        em.persist(account);
        em.getTransaction().commit();

        return account.getId();
    }

    @Override
    public Account find(Long accountId) {
        EntityManager em = EMFactory.createEntityManager();
        return em.createNamedQuery("findAccountById", Account.class)
                .setParameter("accountId", accountId)
                .getSingleResult();
    }

    @Override
    public void update(Long accountId, String name) {
        // TODO: implement...
    }

}
