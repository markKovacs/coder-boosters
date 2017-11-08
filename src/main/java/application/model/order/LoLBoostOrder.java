package application.model.order;

import application.model.GameType;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "lol_boost_order")
public class LoLBoostOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private LeagueDivision currentRank;

    // TODO: for later use
    /*@Enumerated(EnumType.STRING)
    private LeagueDivision desiredRank;*/

    public LoLBoostOrder(LeagueDivision currentRank, int numberOfGames,
                         OrderType orderType,double bonusPercentage, Date deadLine) {
        this.gameType = GameType.LOL;
        this.currentRank = currentRank;
        this.status = Status.AVAILABLE;
        this.numberOfGames = numberOfGames;
        this.orderType = orderType;
        this.bonusPercentage = bonusPercentage;
        this.deadLine = deadLine;
        this.basePrice = calcBasePrice();
        this.totalPrice = basePrice * (bonusPercentage/100.0 + 1.0);

    }

    @Override
    public double calcBasePrice() {
        // TODO: implement!!!
        double calcedPrice = 100;

        return calcedPrice;
    }

    public LeagueDivision getCurrentRank() {
        return currentRank;
    }

    public void setCurrentRank(LeagueDivision currentRank) {
        this.currentRank = currentRank;
    }
}
