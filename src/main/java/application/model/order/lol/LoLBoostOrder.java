package application.model.order.lol;

import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.OrderType;

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

    // TODO: desiredRank for later use, when not only gamesWon and gamesPlayed can be set
    /*@Enumerated(EnumType.STRING)
    private LeagueDivision desiredRank;*/

    // CONSTRUCTORS
    public LoLBoostOrder() {}
    public LoLBoostOrder(LeagueDivision currentRank, int numberOfGames,
                         OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.LOL, numberOfGames, orderType, bonusPercentage, deadLine);
        this.currentRank = currentRank;
        super.setBasePrice(calcBasePrice());
        super.calcTotal();
    }

    @Override
    public int calcBasePrice() {
        // TODO: implement algorithm for calculating LoL basePrice based on given form input
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
