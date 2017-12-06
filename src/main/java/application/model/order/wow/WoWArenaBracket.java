package application.model.order.wow;

public enum WoWArenaBracket {
    BELOW_1500,
    FROM_1501_TO_1600,
    FROM_1601_TO_1700,
    FROM_1701_TO_1800,
    FROM_1801_TO_1900,
    FROM_1901_TO_2000,
    FROM_2001_TO_2100,
    FROM_2101_TO_2200,
    FROM_2201_TO_2300,
    FROM_2301_TO_2400,
    FROM_2401_TO_2500,
    OVER_2501;

    public static WoWArenaBracket safeValueOf(String bracketString){
        try{
            return valueOf(bracketString);
        } catch (IllegalArgumentException ie){
            return null;
        }
    }
}
