package application.model.order.lol;

public enum LeagueDivision {
    CHALLENGER,
    MASTER,
    DIAMOND_I,
    DIAMOND_II,
    DIAMOND_III,
    DIAMOND_IV,
    DIAMOND_V,
    PLATINUM_I,
    PLATINUM_II,
    PLATINUM_III,
    PLATINUM_IV,
    PLATINUM_V,
    GOLD_I,
    GOLD_II,
    GOLD_III,
    GOLD_IV,
    GOLD_V,
    SILVER_I,
    SILVER_II,
    SILVER_III,
    SILVER_IV,
    SILVER_V,
    BRONZE_I,
    BRONZE_II,
    BRONZE_III,
    BRONZE_IV,
    BRONZE_V;

    public static LeagueDivision safeValueOf(String divisionString){
        try{
            return valueOf(divisionString);
        } catch (IllegalArgumentException ie){
            return null;
        }
    }
}
