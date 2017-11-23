package application.dao;

import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.Status;

import java.util.List;

public interface OrderDao {

    BoostOrder findBoostOrder(Long gameAccountId);
    Long addBoostOrder(Account account, BoostOrder boostOrder);
    void setGameAccount(BoostOrder order, GameAccount gameAccount);
    void removeBoostOrder(Account account, BoostOrder boostOrder);
    void setStatus(BoostOrder boostOrder, Status newStatus);
    List<BoostOrder> getOrdersByAccount(Account account);
    List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account);

}
