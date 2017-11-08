package application.model.account;

import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "customer")
@Table(name = "customer_account")
public class CustomerAccount extends Account {

    int boostCoin;

    @OneToMany(
            mappedBy = "account",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    List<GameAccount> gameAccountList = new ArrayList<>();

    @OneToMany(
            mappedBy = "customerAccount",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    List<BoostOrder> boostOrderList = new ArrayList<>();

    public CustomerAccount() {
    }

    public CustomerAccount(String accountName, String email, String password) {
        super(accountName, email, password);
        this.boostCoin = 100;
    }

    public void addGameAccountBiDir(GameAccount gameAccount) {
        this.gameAccountList.add(gameAccount);
        gameAccount.setAccount(this);
    }

    public void removeGameAccount(GameAccount gameAccount) {
        this.gameAccountList.remove(gameAccount);
        // gameAccount.setAccount(null); // if need to be bidirectional
    }

    public void addBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.add(boostOrder);
        boostOrder.setCustomerAccount(this);
    }

    public void removeBoostOrder(Long boostOrderId) {
        // TODO: maybe this will need to be similar to removeGameAccount!!!
        BoostOrder boostOrder = boostOrderList.stream()
                .filter(bo -> bo.getId().equals(boostOrderId))
                .findFirst().orElse(null);

        if (boostOrder == null || !boostOrder.getStatus().equals(Status.AVAILABLE)) {
            return;
        }
        this.boostOrderList.remove(boostOrder);
        // boostOrder.setCustomerAccount(null); // if need to be bidirectional
    }

    public List<GameAccount> getGameAccountList() {
        return gameAccountList;
    }

    public void setGameAccountList(List<GameAccount> gameAccountList) {
        this.gameAccountList = gameAccountList;
    }

    public List<BoostOrder> getBoostOrderList() {
        return boostOrderList;
    }

    public void setBoostOrderList(List<BoostOrder> boostOrderList) {
        this.boostOrderList = boostOrderList;
    }
}
