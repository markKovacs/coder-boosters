package application.service;

import application.dao.OrderDao;
import application.model.account.Account;
import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.model.order.BoostOrder;
import application.model.order.LeagueDivision;
import application.model.order.LoLBoostOrder;
import application.model.order.OrderType;
import application.utils.DataUtil;
import application.utils.InputField;

import java.util.*;

public class OrderService {

    private OrderDao orderDao;
    private DataUtil dataUtil;

    public OrderService(OrderDao orderDao, DataUtil dataUtil) {
        this.orderDao = orderDao;
        this.dataUtil = dataUtil;
    }

    public List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account) {
        return orderDao.getOrdersForBoosterAndAllAvailable(account);
    }

    public List<BoostOrder> getOrdersByAccount(Account account) {
        return orderDao.getOrdersByAccount(account);
    }

    public BoostOrder findBoostOrder(Long boostOrderId) {
        return orderDao.findBoostOrder(boostOrderId);
    }

    public boolean acceptOrder(BoosterAccount boosterAccount, BoostOrder boostOrder) {

        // TODO: logic could be used to see if boosterAccount is eligible to accept boostOrder
        // TODO: if not: do not add and return false...

        orderDao.addBoostOrder(boosterAccount, boostOrder);
        return true;
    }

    public boolean closeOrder(BoosterAccount boosterAccount, BoostOrder boostOrder) {
        orderDao.closeBoostOrder(boosterAccount, boostOrder);
        return true;
    }

    public List<String> validateOrderData(Map<String, String> inputData) {
        List<String> errors = new ArrayList<>();

        switch (inputData.get("gameType")) {

            case "LOL":
                if (!Arrays.asList(LeagueDivision.values())
                        .contains(LeagueDivision.valueOf(inputData.get("currentRank")))) {
                    errors.add("Selected league/division rank is invalid.");
                }

                int numOfGames = dataUtil.castStringToInt(inputData.get("numberOfGames"));
                if (numOfGames < 1 || numOfGames > 10) {
                    errors.add("Number of games selected should be between 1-10.");
                }

                if (!Arrays.asList(OrderType.values())
                        .contains(OrderType.valueOf(inputData.get("orderType")))) {
                    errors.add("Selected order type is invalid.");
                }

                double bonusPercentage = dataUtil.castStringToDouble(inputData.get("bonusPercentage"));
                if (bonusPercentage != 0.0 && bonusPercentage != 5.0 &&
                        bonusPercentage != 10.0 && bonusPercentage != 15.0) {
                    errors.add("Bonus percentage must be 0, 5, 10 or 15");
                }

                int year = dataUtil.castStringToInt(inputData.get("year"));
                if (year > 2099 || year < 2017) {
                    errors.add("Year must be between 2017 and 2099");
                }

                int month = dataUtil.castStringToInt(inputData.get("month"));
                if (month < 1 || month > 12) {
                    errors.add("Months must be between 1 and 12");
                }

                int day = dataUtil.castStringToInt(inputData.get("day"));
                if (day < 1 || day > 31) {
                    errors.add("Days must be between 1 and 31");
                }

                int hour = dataUtil.castStringToInt(inputData.get("hour"));
                if (hour < 0 || hour > 24) {
                    errors.add("Hours must be between 0 and 24");
                }

                if (!InputField.USERNAME.validate(inputData.get("gameAccName"))) {
                    errors.add("Game account name is invalid.");
                }

                if (!InputField.PASSWORD.validate(inputData.get("gameAccPassword"))) {
                    errors.add("Game account password is invalid.");
                }
                break;

            default:
                errors.add("Wrong game type.");
        }

        return errors;
    }

    public BoostOrder createOrder(CustomerAccount account, Map<String, String> inputData) {

        BoostOrder boostOrder;
        switch (inputData.get("gameType")) {
            case "LOL":
                boostOrder = new LoLBoostOrder(
                        LeagueDivision.valueOf(inputData.get("currentRank")),
                        dataUtil.castStringToInt(inputData.get("numberOfGames")),
                        OrderType.valueOf(inputData.get("orderType")),
                        dataUtil.castStringToDouble(inputData.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(inputData.get("year")),
                                dataUtil.castStringToInt(inputData.get("month")),
                                dataUtil.castStringToInt(inputData.get("day")),
                                dataUtil.castStringToInt(inputData.get("hour"))
                        )
                );
                break;

            default:
                return null;
        }

        orderDao.addBoostOrder(account, boostOrder);
        return boostOrder;
    }

    public List<LeagueDivision> getLoLLeagueDivisions() {
        // TODO: this could be stored in database and read divisions from there
        return Arrays.asList(LeagueDivision.values());
    }
}
