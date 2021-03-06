package application.repository;

import application.model.account.Account;
import application.model.order.BoostOrder;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BoostOrderRepository extends JpaRepository<BoostOrder, Long> {

    List<BoostOrder> findBoostOrdersByBoosterAccountOrBoosterAccountIsNull(Account account);

    List<BoostOrder> findBoostOrdersByCustomerAccount(Account account);

    BoostOrder findById(Long boostOrderId);

}
