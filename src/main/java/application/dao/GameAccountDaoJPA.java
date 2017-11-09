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

        // ADD TO MEMORY
        account.addGameAccountBiDir(gameAccount);

        // ADD TO DATABASE
        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        em.persist(gameAccount);

        em.getTransaction().commit();
        em.close();

        return gameAccount.getId();
    }

    @Override
    public void removeGameAccount(CustomerAccount account, GameAccount gameAccount) {

        // REMOVE FROM MEMORY
        account.removeGameAccountBiDir(gameAccount);

        // REMOVE FROM DATABASE
        EntityManager em = EMFactory.createEntityManager();
        em.getTransaction().begin();

        GameAccount mergedGameAccount = em.merge(gameAccount);
        em.remove(mergedGameAccount);

        em.getTransaction().commit();
        em.close();
    }
}
