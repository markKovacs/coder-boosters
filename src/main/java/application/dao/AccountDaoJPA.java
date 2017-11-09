package application.dao;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;

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
    public Account findAccountById(Long accountId) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<Account> result = em.createNamedQuery("Account.findAccountById", Account.class)
                .setParameter("accountId", accountId);
        List<Account> accounts = result.getResultList();

        em.close();

        if (!accounts.isEmpty()) {
            return accounts.get(0);
        }
        return null;
    }

    @Override
    public CustomerAccount findCustomerById(Long accountId) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<CustomerAccount> result = em.createNamedQuery("CustomerAccount.findCustomerById", CustomerAccount.class)
                .setParameter("accountId", accountId);
        List<CustomerAccount> accounts = result.getResultList();

        em.close();

        if (!accounts.isEmpty()) {
            return accounts.get(0);
        }
        return null;
    }

    @Override
    public BoosterAccount findBoosterById(Long accountId) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<BoosterAccount> result = em.createNamedQuery("BoosterAccount.findBoosterById", BoosterAccount.class)
                .setParameter("accountId", accountId);
        List<BoosterAccount> accounts = result.getResultList();

        em.close();

        if (!accounts.isEmpty()) {
            return accounts.get(0);
        }
        return null;
    }

    @Override
    public Account findAccountByName(String accountName) {
        EntityManager em = EMFactory.createEntityManager();

        TypedQuery<Account> result = em.createNamedQuery("Account.findAccountByAccountName", Account.class)
                .setParameter("accountName", accountName);
        List<Account> accounts = result.getResultList();
        em.close();

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

        List<String> accountNames = result.getResultList();
        em.close();
        
        return accountNames;
    }

    @Override
    public List<String> getAllEmails() {
        EntityManager em = EMFactory.createEntityManager();
        TypedQuery<String> result = em.createNamedQuery("Account.getEmails", String.class);

        List<String> emails = result.getResultList();
        em.close();

        return emails;
    }

}
