package application.model.order;

import application.model.GameType;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.account.GameAccount;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@NamedQueries({
        @NamedQuery(name = "BoostOrder.getOrdersForBoosterAndAllAvailable",
                query = "SELECT o FROM BoostOrder o WHERE o.boosterAccount = :account OR o.boosterAccount IS NULL"),
        @NamedQuery(name = "BoostOrder.getBoosterOrderById",
                query = "SELECT o from BoostOrder o WHERE o.id = :boostOrderId")
})
@Entity
@Table(name = "boost_order")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class BoostOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Enumerated(value = EnumType.STRING)
    private GameType gameType;

    @Enumerated(value = EnumType.STRING)
    private Status status;

    private int numberOfGames;

    @Enumerated(value = EnumType.STRING)
    private OrderType orderType;

    public int basePrice;

    private double bonusPercentage;

    @Temporal(TemporalType.TIMESTAMP)
    private Date deadLine;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private CustomerAccount customerAccount;

    @ManyToOne
    @JoinColumn(name = "booster_id")
    BoosterAccount boosterAccount;

    @ManyToOne
    @JoinColumn(name = "game_acc_id")
    private GameAccount gameAccount;

    @Transient
    private int totalPrice;

    @PostLoad
    public void calcTotal() {
        this.totalPrice = (int) ((double) this.basePrice * (bonusPercentage / 100.0 + 1.0));
    }

    public abstract int calcBasePrice();

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

    public int getBasePrice() {
        return basePrice;
    }

    public void setBasePrice(int basePrice) {
        this.basePrice = basePrice;
    }

    public double getBonusPercentage() {
        return bonusPercentage;
    }

    public void setBonusPercentage(double bonusPercentage) {
        this.bonusPercentage = bonusPercentage;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
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

    public GameAccount getGameAccount() {
        return gameAccount;
    }

    public void setGameAccount(GameAccount gameAccount) {
        this.gameAccount = gameAccount;
    }

    public String getGameAccountName() {
        if (this.gameAccount == null) return null;
        return this.gameAccount.getAccountName();
    }

    public String getGameAccountPassword() {
        if (this.gameAccount == null) return null;
        return this.gameAccount.getPassword();
    }

    public String deadlineString() {
        DateFormat df = new SimpleDateFormat("MM/dd/yyyy HH:mm");
        return df.format(deadLine);
    }

    @Override
    public String toString() {
        return "BoostOrder{" +
                "id=" + id +
                ", gameType=" + gameType +
                ", status=" + status +
                ", numberOfGames=" + numberOfGames +
                ", orderType=" + orderType +
                ", basePrice=" + basePrice +
                ", bonusPercentage=" + bonusPercentage +
                ", totalPrice=" + totalPrice +
                ", deadLine=" + deadLine +
                ", customerAccount=" + customerAccount +
                ", boosterAccount=" + boosterAccount +
                '}';
    }

}
