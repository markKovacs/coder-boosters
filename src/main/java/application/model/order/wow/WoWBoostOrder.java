package application.model.order.wow;

import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.OrderType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "wow_boost_order")
public class WoWBoostOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private WoWArenaBracket currentBracket;

    // CONSTRUCTORS
    public WoWBoostOrder() {
    }

    public WoWBoostOrder(WoWArenaBracket currentBracket, int numberOfGames,
                         OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.WOW, numberOfGames, orderType, bonusPercentage, deadLine);
        this.currentBracket = currentBracket;
        super.setBasePrice(calcBasePrice());
        super.calcTotal();
    }

    @Override
    public int calcBasePrice() {

        int calcedPrice = 0;
        double numOfGamesMultiplied = this.getCurrentBracket().getMultiplier() * (double) this.getNumberOfGames();

        switch (this.getOrderType()) {
            case GAMES_WON:
                calcedPrice = ((int) (10.0 * numOfGamesMultiplied));
                break;
            case GAMES_PLAYED:
                calcedPrice = ((int) (5.0 * numOfGamesMultiplied));
                break;
        }

        return calcedPrice;
    }

    public WoWArenaBracket getCurrentBracket() {
        return currentBracket;
    }

    public void setCurrentBracket(WoWArenaBracket currentBracket) {
        this.currentBracket = currentBracket;
    }
}
