package application.dao;

import application.model.account.Account;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.Status;

import java.util.List;

public interface OrderDao {

    BoostOrder findBoostOrder(Long gameAccountId);
    BoostOrder addBoostOrder(Account account, BoostOrder boostOrder);
    void setGameAccount(BoostOrder order, GameAccount gameAccount);
    //Long addBoostOrder(Account account, BoostOrder boostOrder);
    void closeBoostOrder(Account account, BoostOrder boostOrder);
    void removeBoostOrder(Account account, BoostOrder boostOrder);
    void setStatus(BoostOrder boostOrder, Status newStatus);
    List<BoostOrder> getOrdersByAccount(Account account);
    List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account);

}
