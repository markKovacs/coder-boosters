package application.model;

import javax.persistence.*;

@Entity
public class GameAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "acc_name")
    private String accountName;

    private String password;

    @Column(name = "acc_type")
    private GameType gameType;

    @ManyToOne
    @JoinColumn(name = "customer_acc")
    private Account account;

    public GameAccount() {
    }

    public GameAccount(String accountName, String password, GameType gameType) {
        this.accountName = accountName;
        this.password = password;
        this.gameType = gameType;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public GameType getGameType() {
        return gameType;
    }

    public void setGameType(GameType gameType) {
        this.gameType = gameType;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
