package application.repository;

import application.model.account.GameAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameAccountRepository extends JpaRepository<GameAccount, Long> {
}
