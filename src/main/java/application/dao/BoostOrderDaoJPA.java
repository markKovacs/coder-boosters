package application.dao;

import application.model.account.Account;
import application.model.order.BoostOrder;

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

        // ADD TO MEMORY
        account.addBoostOrderBiDir(boostOrder);

        // ADD TO DATABASE
        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        em.persist(boostOrder);

        em.getTransaction().commit();
        em.close();

        return boostOrder.getId();
    }

    @Override
    public void removeBoostOrder(Account account, BoostOrder boostOrder) {

        // REMOVE FROM MEMORY
        account.removeBoostOrderBiDir(boostOrder);

        // REMOVE FROM DATABASE
        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        BoostOrder mergedBoostOrder = em.merge(boostOrder);
        em.remove(mergedBoostOrder);

        em.getTransaction().commit();
        em.close();
    }

}
