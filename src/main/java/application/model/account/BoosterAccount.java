package application.model;

import application.model.order.BoostOrder;
import application.model.order.Status;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@NamedQueries({
        @NamedQuery(name = "BoosterAccount.getAllOrders",
                query = "SELECT o FROM BoostOrder o WHERE o.status = :status")
})
@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "booster")
@Table(name = "booster_account")
public class BoosterAccount extends Account {

    @OneToMany(
            mappedBy = "boosterAccount"
    )
    List<BoostOrder> boostOrderList = new ArrayList<>();

    public BoosterAccount() {
    }

    public BoosterAccount(String accountName, String email, String password) {
        super(accountName, email, password);
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
}
