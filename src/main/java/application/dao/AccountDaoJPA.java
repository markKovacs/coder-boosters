package application.dao;

import application.model.account.Account;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;
import java.util.Map;

import static application.App.EMFactory;

public class AccountDaoJPA implements AccountDao {

    @Override
    public Long add(Account account) {
        EntityManager em = EMFactory.createEntityManager();

        em.getTransaction().begin();

        em.persist(account);

        em.getTransaction().commit();
        em.close();

        return account.getId();
    }

    @Override
    public Account find(Long accountId) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<Account> result = em.createNamedQuery("Account.findAccountById", Account.class)
                .setParameter("accountId", accountId);
        List<Account> accounts = result.getResultList();

        if (!accounts.isEmpty()) {
            return accounts.get(0);
        }
        return null;
    }

    @Override
    public Account find(String accountName) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<Account> result = em.createNamedQuery("Account.findAccountByAccountName", Account.class)
                .setParameter("accountName", accountName);
        List<Account> accounts = result.getResultList();

        if (!accounts.isEmpty()) {
            return accounts.get(0);
        }
        return null;
    }

    @Override
    public List<String> update(Long accountId, Map<String, String> inputData) {
        return null;
    }

    @Override
    public List<String> getAllAccountNames() {
        EntityManager em = EMFactory.createEntityManager();
        TypedQuery<String> result = em.createNamedQuery("Account.getAccountNames", String.class);

        return result.getResultList();
    }

    @Override
    public List<String> getAllEmails() {
        EntityManager em = EMFactory.createEntityManager();
        TypedQuery<String> result = em.createNamedQuery("Account.getEmails", String.class);

        return result.getResultList();
    }

}
