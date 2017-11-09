package application.dao;

import application.model.account.Account;
import application.model.order.BoostOrder;
import application.model.order.Status;

import java.util.List;

public interface BoostOrderDao {

    BoostOrder findBoostOrder(Long gameAccountId);
    Long addBoostOrder(Account account, BoostOrder boostOrder);
    void removeBoostOrder(Account account, BoostOrder boostOrder);
    void setStatus(BoostOrder boostOrder, Status newStatus);
    List<BoostOrder> getOrdersByAccount(Account account);

}
