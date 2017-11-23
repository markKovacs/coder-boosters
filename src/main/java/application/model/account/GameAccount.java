package application.model.account;

import application.model.GameType;
import application.model.order.BoostOrder;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "game_account")
public class GameAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "acc_name")
    private String accountName;

    private String password;

    @Enumerated(value = EnumType.STRING)
    @Column(name = "acc_type")
    private GameType gameType;

    @ManyToOne
    @JoinColumn(name = "customer_acc")
    private Account account;

    @OneToMany(
            mappedBy = "gameAccount",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    List<BoostOrder> boostOrderList = new ArrayList<>();

    public GameAccount() {
    }

    public GameAccount(String accountName, String password, GameType gameType) {
        this.accountName = accountName;
        this.password = password;
        this.gameType = gameType;
    }

    public List<BoostOrder> getBoostOrderList() {
        return boostOrderList;
    }

    public void addBoostOrderList(BoostOrder boostOrder) {
        boostOrderList.add(boostOrder);
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

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}
