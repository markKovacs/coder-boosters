package application.service;

import application.model.GameType;
import application.model.account.Account;
import application.model.account.GameAccount;
import application.model.order.BoostOrder;
import application.model.order.OrderType;
import application.model.order.Status;
import application.model.order.csgo.CSGOBoostOrder;
import application.model.order.csgo.CSGODivision;
import application.model.order.lol.LeagueDivision;
import application.model.order.lol.LoLBoostOrder;
import application.model.order.ow.OWBoostOrder;
import application.model.order.ow.OWDivision;
import application.model.order.rocketleague.RocketLeague;
import application.model.order.rocketleague.RocketLeagueOrder;
import application.model.order.wow.WoWArenaBracket;
import application.model.order.wow.WoWBoostOrder;
import application.repository.AccountRepository;
import application.repository.BoostOrderRepository;
import application.utils.DataUtil;
import application.utils.InputField;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class OrderService {

    private AccountRepository accountRepository;
    private BoostOrderRepository orderRepository;
    private DataUtil dataUtil;

    public OrderService(AccountRepository accountRepository, BoostOrderRepository orderRepository, DataUtil dataUtil) {
        this.accountRepository = accountRepository;
        this.orderRepository = orderRepository;
        this.dataUtil = dataUtil;
    }

    public List<BoostOrder> getOrdersForBoosterAndAllAvailable(Account account) {
        return orderRepository.findBoostOrdersByBoosterAccountOrBoosterAccountIsNull(account);
    }

    public List<BoostOrder> getOrdersByAccount(Account account) {
        return orderRepository.findBoostOrdersByCustomerAccount(account);
    }

    public BoostOrder findBoostOrder(Long boostOrderId) {
        return orderRepository.findById(boostOrderId);
    }

    public boolean takeOrder(Account boosterAccount, BoostOrder boostOrder) {

        // TODO: implement honorPoints check before allowing taking order

        boosterAccount.addBoostOrderBiDir(boostOrder);
        orderRepository.save(boostOrder);

        return true;
    }

    public boolean closeOrder(BoostOrder boostOrder) {
        boostOrder.setStatus(Status.DONE);
        orderRepository.save(boostOrder);
        return true;
    }

    public List<String> validateOrderData(Map<String, String> inputData) {
        List<String> errors = new ArrayList<>();

        int numOfGames = dataUtil.castStringToInt(inputData.get("numberOfGames"));
        if (numOfGames < 1 || numOfGames > 10) {
            errors.add("Number of games selected should be between 1-10.");
        }

        if (!Arrays.asList(OrderType.values())
                .contains(OrderType.safeValueOf(inputData.get("orderType")))) {
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

        switch (GameType.safeValueOf(inputData.get("game_type"))) {
            case LOL:
                if (!Arrays.asList(LeagueDivision.values())
                        .contains(LeagueDivision.safeValueOf(inputData.get("currentRank")))) {
                    errors.add("Selected league/division rank is invalid.");
                }
                break;

            case WOW:
                if (!Arrays.asList(WoWArenaBracket.values())
                        .contains(WoWArenaBracket.safeValueOf(inputData.get("currentBracket")))) {
                    errors.add("Selected arena bracket is invalid.");
                }
                break;
            case RL:
                if (!Arrays.asList(RocketLeague.values())
                        .contains(RocketLeague.safeValueOf(inputData.get("currentRank")))) {
                    errors.add("Selected league is invalid.");
                }
                break;

            case OW:
                if (!Arrays.asList(OWDivision.values())
                        .contains(OWDivision.safeValueOf(inputData.get("currentRank")))) {
                    errors.add("Selected league is invalid.");
                }
                break;
            case CSGO:
                if (!Arrays.asList(CSGODivision.values())
                        .contains(CSGODivision.safeValueOf(inputData.get("currentRank")))) {
                    errors.add("Selected league/division rank is invalid.");
                }
                break;

            default:
                return Collections.singletonList("Wrong game type.");
        }

        return errors;
    }

    public BoostOrder createOrder(Account account, Map<String, String> form) {

        BoostOrder boostOrder;
        switch (form.get("game_type")) {
            case "LOL":
                boostOrder = new LoLBoostOrder(
                        LeagueDivision.valueOf(form.get("currentRank")),
                        dataUtil.castStringToInt(form.get("numberOfGames")),
                        OrderType.valueOf(form.get("orderType")),
                        dataUtil.castStringToDouble(form.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(form.get("year")),
                                dataUtil.castStringToInt(form.get("month")),
                                dataUtil.castStringToInt(form.get("day")),
                                dataUtil.castStringToInt(form.get("hour"))
                        )
                );
                break;

            case "WOW":
                boostOrder = new WoWBoostOrder(
                        WoWArenaBracket.valueOf(form.get("currentBracket")),
                        dataUtil.castStringToInt(form.get("numberOfGames")),
                        OrderType.valueOf(form.get("orderType")),
                        dataUtil.castStringToDouble(form.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(form.get("year")),
                                dataUtil.castStringToInt(form.get("month")),
                                dataUtil.castStringToInt(form.get("day")),
                                dataUtil.castStringToInt(form.get("hour"))
                        )
                );
                break;

            case "RL":
                boostOrder = new RocketLeagueOrder(
                        RocketLeague.valueOf(form.get("currentRank")),
                        dataUtil.castStringToInt(form.get("numberOfGames")),
                        OrderType.valueOf(form.get("orderType")),
                        dataUtil.castStringToDouble(form.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(form.get("year")),
                                dataUtil.castStringToInt(form.get("month")),
                                dataUtil.castStringToInt(form.get("day")),
                                dataUtil.castStringToInt(form.get("hour"))
                        )
                );
                break;

            case "OW":
                boostOrder = new OWBoostOrder(
                        OWDivision.valueOf(form.get("currentRank")),
                        dataUtil.castStringToInt(form.get("numberOfGames")),
                        OrderType.valueOf(form.get("orderType")),
                        dataUtil.castStringToDouble(form.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(form.get("year")),
                                dataUtil.castStringToInt(form.get("month")),
                                dataUtil.castStringToInt(form.get("day")),
                                dataUtil.castStringToInt(form.get("hour"))
                        )
                );
                break;

            case "CSGO":
                boostOrder = new CSGOBoostOrder(
                        CSGODivision.valueOf(form.get("currentRank")),
                        dataUtil.castStringToInt(form.get("numberOfGames")),
                        OrderType.valueOf(form.get("orderType")),
                        dataUtil.castStringToDouble(form.get("bonusPercentage")),
                        dataUtil.createDate(
                                dataUtil.castStringToInt(form.get("year")),
                                dataUtil.castStringToInt(form.get("month")),
                                dataUtil.castStringToInt(form.get("day")),
                                dataUtil.castStringToInt(form.get("hour"))
                        )
                );
                break;

            default:
                return null;
        }

        account.addBoostOrderBiDir(boostOrder);
        return orderRepository.save(boostOrder);
    }

    public List<LeagueDivision> getLoLLeagueDivisions() {
        return Arrays.asList(LeagueDivision.values());
    }

    public void setGameAccount(BoostOrder boostOrder, GameAccount gameAccount) {

        boostOrder.setGameAccount(gameAccount);
        gameAccount.addBoostOrderList(boostOrder);

        orderRepository.save(boostOrder);
    }

    public List<WoWArenaBracket> getWoWArenaBrackets() {
        return Arrays.asList(WoWArenaBracket.values());
    }

    public List<OWDivision> getOWDivisions() {
        return Arrays.asList(OWDivision.values());
    }

    public List<RocketLeague> getRocketLeagueDivisions() {
        return Arrays.asList(RocketLeague.values());
    }

    public List<CSGODivision> getCSGOLeagueDivisions() {
        return Arrays.asList(CSGODivision.values());
    }

}
