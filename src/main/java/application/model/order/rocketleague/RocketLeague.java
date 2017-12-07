package application.model.order.rocketleague;

public enum RocketLeague {
    GRAND_CHAMPION(5.0),
    LEGEND_I(4.2),
    LEGEND_II(4.1),
    LEGEND_III(4.0),
    CHAMPION_I(3.2),
    CHAMPION_II(3.1),
    CHAMPION_III(3.0),
    DIAMOND_I(2.5),
    DIAMOND_II(2.4),
    DIAMOND_III(2.3),
    PLATINUM_I(2.2),
    PLATINUM_II(2.1),
    PLATINUM_III(2.0),
    GOLD_I(1.9),
    GOLD_II(1.8),
    GOLD_III(1.7),
    SILVER_I(1.6),
    SILVER_II(1.5),
    SILVER_III(1.4),
    BRONZE_I(1.3),
    BRONZE_II(1.1),
    BRONZE_III(1.0);

    private double multiplier;

    RocketLeague(double multiplier) {
        this.multiplier = multiplier;
    }

    public double getMultiplier() {
        return multiplier;
    }

    public static RocketLeague safeValueOf(String rocketLeague) {
        try {
            return valueOf(rocketLeague);
        } catch (IllegalArgumentException ie) {
            return null;
        }
    }
}