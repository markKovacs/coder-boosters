package application.model.account;

import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@NamedQueries({
        @NamedQuery(name = "BoosterAccount.getAllOrders",
                query = "SELECT o FROM BoostOrder o WHERE o.status = :status")
})
@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "booster")
@Table(name = "booster_account")
public class BoosterAccount extends Account {

    // TODO: MANY TO MANY, GAMETYPE NEED TO BE ENTITY AND PERSIST THEM
    //Set<GameType> playedGames = new HashSet<>();

    int honorPoints;

    @OneToMany(
            mappedBy = "boosterAccount"
    )
    List<BoostOrder> boostOrderList = new ArrayList<>();

    public BoosterAccount() {
    }

    public BoosterAccount(String accountName, String email, String password) {
        super(accountName, email, password);
        this.honorPoints = 100;
    }

    public void addBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.add(boostOrder);
        boostOrder.setBoosterAccount(this);
        boostOrder.setStatus(Status.TAKEN);
    }

    public List<BoostOrder> getBoostOrderList() {
        return boostOrderList;
    }

    public void setBoostOrderList(List<BoostOrder> boostOrderList) {
        this.boostOrderList = boostOrderList;
    }

    public int getHonorPoints() {
        return honorPoints;
    }

    public void setHonorPoints(int honorPoints) {
        this.honorPoints = honorPoints;
    }
}
