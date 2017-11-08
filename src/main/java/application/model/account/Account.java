package application.model;

import javax.persistence.*;

@NamedQueries({
        @NamedQuery(name = "Account.findAccountById", query = "SELECT a FROM Account a WHERE a.id = :accountId"),
        @NamedQuery(name = "Account.findAccountByAccountName", query = "SELECT a FROM Account a WHERE a.accountName = :accountName"),
        @NamedQuery(name = "Account.getAccountNames", query = "SELECT a.accountName FROM Account a"),
        @NamedQuery(name = "Account.getEmails", query = "SELECT a.email FROM Account a")
})
@Entity
@Table
@DiscriminatorColumn(name = "acc_type")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, name = "acc_name")
    private String accountName;

    @Column(unique = true)
    private String email;

    private String password;

    public Account() {
    }

    public Account(String accountName, String email, String password) {
        this.accountName = accountName;
        this.email = email;
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
