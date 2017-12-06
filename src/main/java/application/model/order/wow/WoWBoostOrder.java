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
    public WoWBoostOrder() {}
    public WoWBoostOrder(WoWArenaBracket currentBracket, int numberOfGames,
                         OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.WOW, numberOfGames, orderType, bonusPercentage, deadLine);
        super.setBasePrice(calcBasePrice());
        super.calcTotal();
        this.currentBracket = currentBracket;
    }

    @Override
    public int calcBasePrice() {
        // TODO: implement algorithm for calculating WoW basePrice based on given form input
        int calcedPrice = 100;

        return calcedPrice;
    }

    public WoWArenaBracket getCurrentBracket() {
        return currentBracket;
    }

    public void setCurrentBracket(WoWArenaBracket currentBracket) {
        this.currentBracket = currentBracket;
    }
}
