package application.model.account;

import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@NamedQueries({
        @NamedQuery(name = "BoosterAccount.findBoosterById",
                query = "SELECT ba FROM BoosterAccount ba WHERE ba.id = :accountId")
})
@Entity
@PrimaryKeyJoinColumn(referencedColumnName = "id")
@DiscriminatorValue(value = "booster")
@Table(name = "booster_account")
public class BoosterAccount extends Account {

    // TODO: ManyToMany connection could be added here, describing what games a booster is playing
    //Set<GameType> playedGames = new HashSet<>();

    private int honorPoints;

    @OneToMany(mappedBy = "boosterAccount")
    private List<BoostOrder> boostOrderList = new ArrayList<>();

    // CONSTRUCTORS
    public BoosterAccount() {}
    public BoosterAccount(String accountName, String email, String password) {
        super(accountName, email, password);
        this.honorPoints = 100;
        this.setBoostCoin(0);
    }

    @Override
    public void addBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.add(boostOrder);
        boostOrder.setBoosterAccount(this);
        boostOrder.setStatus(Status.TAKEN);
    }

    @Override
    public void removeBoostOrderBiDir(BoostOrder boostOrder) {
        this.boostOrderList.remove(boostOrder);
        boostOrder.setBoosterAccount(null);
        boostOrder.setStatus(Status.AVAILABLE);
    }

    // GETTERS - SETTERS
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
