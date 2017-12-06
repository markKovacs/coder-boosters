package application.repository;

import application.model.account.Account;
import application.model.order.BoostOrder;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BoostOrderRepository extends JpaRepository<BoostOrder, Long> {

    List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account);
    List<BoostOrder> findBoostOrdersByBoosterAccountOrBoosterAccountIsNull(Account account);

    List<BoostOrder> findByBoosterAccount(Account account);

    List<BoostOrder> findByCustomerAccount(Account account);

    BoostOrder findById(Long boostOrderId);

}
