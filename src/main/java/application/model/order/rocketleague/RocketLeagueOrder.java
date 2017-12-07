package application.model.order.rocketleague;


import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.OrderType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "mobile_lol_order")
public class RocketLeagueOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private RocketLeague currentRank;

    // TODO: desiredRank for later use, when not only gamesWon and gamesPlayed can be set
    /*@Enumerated(EnumType.STRING)
    private LeagueDivision desiredRank;*/

    // CONSTRUCTORS
    public RocketLeagueOrder() {
    }

    public RocketLeagueOrder(RocketLeague currentRank, int numberOfGames,
                             OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.LOL, numberOfGames, orderType, bonusPercentage, deadLine);
        this.currentRank = currentRank;
        super.setBasePrice(calcBasePrice());
        super.calcTotal();
    }

    @Override
    public int calcBasePrice() {

        int calcedPrice = 0;
        double numOfGamesMultiplied = this.getCurrentRank().getMultiplier() * (double) this.getNumberOfGames();

        switch (this.getOrderType()) {
            case GAMES_WON:
                calcedPrice = ((int) (8.0 * numOfGamesMultiplied));
                break;
            case GAMES_PLAYED:
                calcedPrice = ((int) (4.0 * numOfGamesMultiplied));
                break;
        }

        return calcedPrice;
    }

    public RocketLeague getCurrentRank() {
        return currentRank;
    }

    public void setCurrentRank(RocketLeague currentRank) {
        this.currentRank = currentRank;
    }

}
