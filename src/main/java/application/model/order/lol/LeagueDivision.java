package application.model.order.lol;

public enum LeagueDivision {
    CHALLENGER(4.0),
    MASTER(3.5),
    DIAMOND_I(3.4),
    DIAMOND_II(3.3),
    DIAMOND_III(3.2),
    DIAMOND_IV(3.1),
    DIAMOND_V(3.0),
    PLATINUM_I(2.9),
    PLATINUM_II(2.8),
    PLATINUM_III(2.7),
    PLATINUM_IV(2.6),
    PLATINUM_V(2.5),
    GOLD_I(2.4),
    GOLD_II(2.3),
    GOLD_III(2.2),
    GOLD_IV(2.1),
    GOLD_V(2.0),
    SILVER_I(1.9),
    SILVER_II(1.8),
    SILVER_III(1.7),
    SILVER_IV(1.6),
    SILVER_V(1.5),
    BRONZE_I(1.4),
    BRONZE_II(1.3),
    BRONZE_III(1.2),
    BRONZE_IV(1.1),
    BRONZE_V(1.0);

    private double multiplier;

    LeagueDivision(double multiplier) {
        this.multiplier = multiplier;
    }

    public double getMultiplier() {
        return multiplier;
    }

    public static LeagueDivision safeValueOf(String divisionString){
        try{
            return valueOf(divisionString);
        } catch (IllegalArgumentException ie){
            return null;
        }
    }

}
