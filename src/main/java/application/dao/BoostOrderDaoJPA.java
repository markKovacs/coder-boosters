package application.dao;

import application.model.account.Account;
import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.EntityManager;

import static application.App.EMFactory;

public class BoostOrderDaoJPA implements BoostOrderDao {

    @Override
    public BoostOrder findBoostOrder(Long boostOrderId) {
        EntityManager em = EMFactory.createEntityManager();

        BoostOrder boostOrder = em.find(BoostOrder.class, boostOrderId);

        em.close();
        return boostOrder;
    }

    @Override
    public Long addBoostOrder(Account account, BoostOrder boostOrder) {

        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        Account mergedAccount = em.merge(account);
        BoostOrder mergedOrder = em.merge(boostOrder);

        // ADD TO MEMORY (POLYMORPHISM)
        mergedAccount.addBoostOrderBiDir(mergedOrder);

        // ADD TO DATABASE
        em.persist(mergedOrder);

        em.getTransaction().commit();
        em.close();

        return mergedOrder.getId();
    }

    @Override
    public void removeBoostOrder(Account account, BoostOrder boostOrder) {

        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        Account mergedAccount = em.merge(account);
        BoostOrder mergedOrder = em.merge(boostOrder);

        // REMOVE FROM MEMORY (POLYMORPHISM)
        mergedAccount.removeBoostOrderBiDir(mergedOrder);

        // REMOVE FROM DATABASE
        em.remove(mergedOrder);

        em.getTransaction().commit();
        em.close();
    }

    @Override
    public void setStatus(BoostOrder boostOrder, Status newStatus) {

        // MEMORY UPDATE
        boostOrder.setStatus(newStatus);

        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        BoostOrder mergedOrder = em.merge(boostOrder);

        em.getTransaction().commit();
        em.close();
    }

}
