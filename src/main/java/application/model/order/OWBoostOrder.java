package application.model.order;

import application.model.GameType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "ow_boost_order")
public class OWBoostOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private LeagueDivision currentRank;

    // TODO: desiredRank for later use, when not only gamesWon and gamesPlayed can be set
    /*@Enumerated(EnumType.STRING)
    private LeagueDivision desiredRank;*/

    // CONSTRUCTORS
    public OWBoostOrder() {}
    public OWBoostOrder(LeagueDivision currentRank, int numberOfGames,
                         OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.LOL, numberOfGames, orderType, bonusPercentage, deadLine);
        super.basePrice = calcBasePrice();
        super.calcTotal();
        this.currentRank = currentRank;
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
