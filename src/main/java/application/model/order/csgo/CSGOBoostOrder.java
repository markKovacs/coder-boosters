package application.model.order.csgo;

import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.OrderType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "csgo_boost_order")
public class CSGOBoostOrder extends BoostOrder{


    @Enumerated(EnumType.STRING)
    private CSGODivision currentRank;


    public CSGOBoostOrder() {}

    public CSGOBoostOrder(CSGODivision currentRank, int numberOfGames, OrderType orderType, double bonusPercentage, Date deadline) {
        super(GameType.CSGO, numberOfGames, orderType, bonusPercentage, deadline);
        this.currentRank = currentRank;
        super.basePrice = calcBasePrice();
        super.calcTotal();
    }

    @Override
    public int calcBasePrice() {

        return 100;
    }

    public CSGODivision getCurrentRank() {
        return currentRank;
    }

    public void setCurrentRank(CSGODivision currentRank) {
        this.currentRank = currentRank;
    }

}
