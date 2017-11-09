package application.model.account;

import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@NamedQueries({
        @NamedQuery(name = "CustomerAccount.findCustomerById",
                query = "SELECT ca FROM CustomerAccount ca WHERE ca.id = :accountId")
})
@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "customer")
@Table(name = "customer_account")
public class CustomerAccount extends Account {

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
    }

    public void addGameAccountBiDir(GameAccount gameAccount) {
        this.gameAccountList.add(gameAccount);
        gameAccount.setAccount(this);
    }

    public void removeGameAccountBiDir(GameAccount gameAccount) {
        this.gameAccountList.remove(gameAccount);
        gameAccount.setAccount(null);
    }

    @Override
    public void addBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.add(boostOrder);
        boostOrder.setCustomerAccount(this);
    }

    @Override
    public void removeBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.remove(boostOrder);
        boostOrder.setCustomerAccount(null);
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
