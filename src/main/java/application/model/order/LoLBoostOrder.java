package application.model.order;

import application.model.GameType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "lol_boost_order")
public class LoLBoostOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private LeagueDivision currentRank;

    // TODO: for later use
    /*@Enumerated(EnumType.STRING)
    private LeagueDivision desiredRank;*/

    public LoLBoostOrder() {
    }

    public LoLBoostOrder(LeagueDivision currentRank, int numberOfGames,
                         OrderType orderType, double bonusPercentage, Date deadLine) {
        super(GameType.LOL, numberOfGames, orderType, bonusPercentage, deadLine);

        super.basePrice = calcBasePrice();
        super.calcTotal();

        this.currentRank = currentRank;
    }

    @Override
    public int calcBasePrice() {
        // TODO: implement algorithm
        int calcedPrice = 100;

        return calcedPrice;
    }

    public LeagueDivision getCurrentRank() {
        return currentRank;
    }

    public void setCurrentRank(LeagueDivision currentRank) {
        this.currentRank = currentRank;
    }
}
