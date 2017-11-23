package application.dao;

import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

public class GameAccountDaoJPA implements GameAccountDao {

    private EntityManagerFactory entityManagerFactory;

    public GameAccountDaoJPA(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = entityManagerFactory;
    }

    @Override
    public GameAccount findGameAccount(Long gameAccountId) {
        EntityManager em = entityManagerFactory.createEntityManager();

        GameAccount gameAccount = em.find(GameAccount.class, gameAccountId);

        em.close();
        return gameAccount;
    }

    @Override
    public GameAccount addGameAccount(CustomerAccount account, GameAccount gameAccount) {

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        CustomerAccount mergedAccount = em.merge(account);
        GameAccount mergedGameAccount = em.merge(gameAccount);

        // ADD TO MEMORY
        mergedAccount.addGameAccountBiDir(mergedGameAccount);

        em.getTransaction().commit();
        em.close();

        return mergedGameAccount;
    }

    @Override
    public void removeGameAccount(CustomerAccount account, GameAccount gameAccount) {

        EntityManager em = entityManagerFactory.createEntityManager();
        em.getTransaction().begin();

        CustomerAccount mergedAccount = em.merge(account);
        GameAccount mergedGameAccount = em.merge(gameAccount);

        // REMOVE FROM MEMORY
        mergedAccount.removeGameAccountBiDir(mergedGameAccount);

        // REMOVE FROM DATABASE
        em.remove(mergedGameAccount);

        em.getTransaction().commit();
        em.close();
    }
}
