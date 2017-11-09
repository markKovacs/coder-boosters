package application.dao;

import application.model.account.Account;
import application.model.order.BoostOrder;

public interface BoostOrderDao {

    BoostOrder findBoostOrder(Long gameAccountId);
    Long addBoostOrder(Account account, BoostOrder boostOrder);
    void removeBoostOrder(Account account, BoostOrder boostOrder);

    // TODO: status setting and whatnot

}
