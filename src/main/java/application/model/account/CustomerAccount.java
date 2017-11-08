package application.model;

import application.model.order.BoostOrder;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

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
    private List<GameAccount> gameAccountList = new ArrayList<>();

    @OneToMany(
            mappedBy = "customerAccount",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<BoostOrder> boostOrderList = new ArrayList<>();

    public CustomerAccount() {
    }

    public CustomerAccount(String accountName, String email, String password) {
        super(accountName, email, password);
    }

    public void addGameAccountBiDir(GameAccount gameAccount) {
        this.gameAccountList.add(gameAccount);
        gameAccount.setAccount(this);
    }

    public void addBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.add(boostOrder);
        boostOrder.setCustomerAccount(this);
    }

    public void removeGameAccount(Long gameAccId) {
        GameAccount gameAccount = gameAccountList.stream()
                .filter(g -> g.getId() == gameAccId)
                .findFirst().orElse(null);

        if (gameAccount == null) {
            return;
        }
        this.gameAccountList.remove(gameAccount);

        // TODO: make bidirectional??? maybe not needed because cascade...
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
