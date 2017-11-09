package application.dao;

import application.model.account.CustomerAccount;
import application.model.account.GameAccount;
import javax.persistence.EntityManager;
import static application.App.EMFactory;

public class GameAccountDaoJPA implements GameAccountDao {

    @Override
    public GameAccount findGameAccount(Long gameAccountId) {
        EntityManager em = EMFactory.createEntityManager();

        GameAccount gameAccount = em.find(GameAccount.class, gameAccountId);

        em.close();
        return gameAccount;
    }

    @Override
    public Long addGameAccount(CustomerAccount account, GameAccount gameAccount) {

        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        CustomerAccount mergedAccount = em.merge(account);
        GameAccount mergedGameAccount = em.merge(gameAccount);

        // ADD TO MEMORY
        mergedAccount.addGameAccountBiDir(mergedGameAccount);

        // ADD TO DATABASE
        em.persist(mergedGameAccount);

        em.getTransaction().commit();
        em.close();

        return mergedGameAccount.getId();
    }

    @Override
    public void removeGameAccount(CustomerAccount account, GameAccount gameAccount) {

        EntityManager em = EMFactory.createEntityManager();
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
