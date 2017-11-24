package application.dao;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import java.util.List;

public class OrderDaoJPA implements OrderDao {

    private EntityManagerFactory entityManagerFactory;

    public OrderDaoJPA(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = entityManagerFactory;
    }

    @Override
    public BoostOrder findBoostOrder(Long boostOrderId) {
        EntityManager em = entityManagerFactory.createEntityManager();

        BoostOrder boostOrder = em.find(BoostOrder.class, boostOrderId);
        boostOrder.calcTotal();

        em.close();
        return boostOrder;
    }

    @Override
    public BoostOrder addBoostOrder(Account account, BoostOrder boostOrder) {

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        Account mergedAccount = em.merge(account);
        BoostOrder mergedOrder = em.merge(boostOrder);

        // ADD TO MEMORY (POLYMORPHISM)
        mergedAccount.addBoostOrderBiDir(mergedOrder);

        // ADD TO DATABASE
        em.persist(mergedOrder);

        em.getTransaction().commit();
        em.close();

        mergedOrder.calcTotal();

        return mergedOrder;
    }

    @Override
    public void setGameAccount(BoostOrder boostOrder, GameAccount gameAccount) {

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        GameAccount mergedGameAccount = em.merge(gameAccount);
        BoostOrder mergedOrder = em.merge(boostOrder);

        mergedOrder.setGameAccount(mergedGameAccount);
        mergedGameAccount.addBoostOrderList(mergedOrder);

        em.getTransaction().commit();
        em.close();
    }

    @Override
    public void removeBoostOrder(Account account, BoostOrder boostOrder) {

        EntityManager em = entityManagerFactory.createEntityManager();
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
    public void closeBoostOrder(Account account, BoostOrder boostOrder) {

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        BoostOrder mergedOrder = em.merge(boostOrder);

        mergedOrder.setStatus(Status.DONE);

        em.getTransaction().commit();
        em.close();
    }

    @Override
    public void setStatus(BoostOrder boostOrder, Status newStatus) {

        // MEMORY UPDATE
        boostOrder.setStatus(newStatus);

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        BoostOrder mergedOrder = em.merge(boostOrder);

        em.getTransaction().commit();
        em.close();
    }

    @Override
    public List<BoostOrder> getOrdersByAccount(Account account) {
        EntityManager em = entityManagerFactory.createEntityManager();
        Account mergedAccount = em.merge(account);

        List<BoostOrder> boostOrders;
        if (account instanceof BoosterAccount) {
            boostOrders = ((BoosterAccount) mergedAccount).getBoostOrderList();
        } else {
            boostOrders = ((CustomerAccount) mergedAccount).getBoostOrderList();
        }
        em.close();

        // CALCULATE TRANSIENT FIELD
        for (BoostOrder boostOrder : boostOrders) {
            boostOrder.calcTotal();
        }

        return boostOrders;
    }

    @Override
    public List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account) {

        EntityManager em = entityManagerFactory.createEntityManager();

        TypedQuery<BoostOrder> result = em.createNamedQuery("BoostOrder.getOrdersForBoosterAndAllAvailable", BoostOrder.class)
                .setParameter("account", account);

        List<BoostOrder> orders = result.getResultList();

        em.close();

        // CALCULATE TRANSIENT FIELD
        for (BoostOrder boostOrder : orders) {
            boostOrder.calcTotal();
        }

        return orders;
    }

}
