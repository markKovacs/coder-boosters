package application.repository;

import application.model.account.Account;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AccountRepository extends JpaRepository<Account, Long> {
    Account findAccountById(Long id);
    Account findAccountByAccountName(String accountName);

    List<String> getAccountNames();
    List<String> getEmails();
}
