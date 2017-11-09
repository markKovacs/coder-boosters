package application.model.order;

import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.GameType;

import javax.persistence.*;
import java.util.Date;

/**
 * GameType:
 *      - game icon
 *
 *      - LOL subclass
 *          -
 *
 *      - eloBoost (target elo selected)
 *      - gameCount (number of games played)
 *      - winCount (based on difference: win-loss)
 *      - coaching (number of games coached... duo/solo???, hour-based???)
 *      -
 * Duo/Solo
 *
 * BasePrice(calculated by system)
 * BonusFee(%, added by user, default 0%)
 * TotalPrice(calculated: BasePrice*(1+BonusFee))
 *
 * customerId
 * boosterId (default = null...)
 *
 * deadline / can be null / timestamp (minute-sharp)
 *
 *
 *
 * */
@Entity
@Table(name = "boost_order")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class BoostOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Enumerated(value = EnumType.STRING)
    GameType gameType;

    @Enumerated(value = EnumType.STRING)
    Status status;

    int numberOfGames;

    @Enumerated(value = EnumType.STRING)
    OrderType orderType;

    double basePrice;
    double bonusPercentage;
    @Transient
    double totalPrice; // will be calculated in constructor but not stored in DB

    @Temporal(TemporalType.TIMESTAMP)
    Date deadLine;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    CustomerAccount customerAccount;

    @ManyToOne
    @JoinColumn(name = "booster_id")
    BoosterAccount boosterAccount;

    public abstract double calcBasePrice();

    public BoostOrder() {
        this.totalPrice = basePrice * (bonusPercentage/100.0 + 1.0);
        this.status = Status.AVAILABLE;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public GameType getGameType() {
        return gameType;
    }

    public void setGameType(GameType gameType) {
        this.gameType = gameType;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public int getNumberOfGames() {
        return numberOfGames;
    }

    public void setNumberOfGames(int numberOfGames) {
        this.numberOfGames = numberOfGames;
    }

    public OrderType getOrderType() {
        return orderType;
    }

    public void setOrderType(OrderType orderType) {
        this.orderType = orderType;
    }

    public double getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(double basePrice) {
        this.basePrice = basePrice;
    }

    public double getBonusPercentage() {
        return bonusPercentage;
    }

    public void setBonusPercentage(double bonusPercentage) {
        this.bonusPercentage = bonusPercentage;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public Date getDeadLine() {
        return deadLine;
    }

    public void setDeadLine(Date deadLine) {
        this.deadLine = deadLine;
    }

    public CustomerAccount getCustomerAccount() {
        return customerAccount;
    }

    public void setCustomerAccount(CustomerAccount customerAccount) {
        this.customerAccount = customerAccount;
    }

    public BoosterAccount getBoosterAccount() {
        return boosterAccount;
    }

    public void setBoosterAccount(BoosterAccount boosterAccount) {
        this.boosterAccount = boosterAccount;
    }
}