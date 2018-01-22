package application.model.order.ow;

import application.model.GameType;
import application.model.order.BoostOrder;
import application.model.order.OrderType;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "ow_boost_order")
public class OWBoostOrder extends BoostOrder {

    @Enumerated(EnumType.STRING)
    private OWDivision currentRank;

    // CONSTRUCTORS
    public OWBoostOrder() {
    }

    public OWBoostOrder(OWDivision currentRank, int numberOfGames,
                        OrderType orderType, double bonusPercentage, Date deadLine) {

        super(GameType.OW, numberOfGames, orderType, bonusPercentage, deadLine);
        this.currentRank = currentRank;
        super.setBasePrice(calcBasePrice());
        super.calcTotal();
    }

    @Override
    public int calcBasePrice() {

        // TODO: implement custom algorithm
        int calcedPrice = 100;

        return calcedPrice;
    }

    public OWDivision getCurrentRank() {
        return currentRank;
    }

    public void setCurrentRank(OWDivision currentRank) {
        this.currentRank = currentRank;
    }

}
