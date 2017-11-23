package application.model.order;

import application.model.GameType;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@NamedQueries({
        @NamedQuery(name = "BoostOrder.getOrdersForBoosterAndAllAvailable",
                query = "SELECT o FROM BoostOrder o WHERE o.id = :accountId OR o.id IS NULL")
})
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

    // TODO: GameAccount need to be added to this entity.

    public abstract double calcBasePrice();

    public BoostOrder() {
    }

    public BoostOrder(GameType gameType, int numberOfGames, OrderType orderType, double bonusPercentage, Date deadLine) {
        this.gameType = gameType;
        this.numberOfGames = numberOfGames;
        this.orderType = orderType;
        this.bonusPercentage = bonusPercentage;
        this.deadLine = deadLine;
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

    public String deadlineString() {
        DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm");
        return df.format(deadLine);
    }

    public void calcTotal() {
        this.totalPrice = this.basePrice * (bonusPercentage/100.0 + 1.0);
    }


}
