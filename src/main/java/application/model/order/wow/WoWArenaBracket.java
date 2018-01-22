package application.model.order.wow;

public enum WoWArenaBracket {
    BELOW_1500(1.0),
    FROM_1501_TO_1600(1.2),
    FROM_1601_TO_1700(1.4),
    FROM_1701_TO_1800(1.6),
    FROM_1801_TO_1900(1.8),
    FROM_1901_TO_2000(2.0),
    FROM_2001_TO_2100(2.2),
    FROM_2101_TO_2200(2.4),
    FROM_2201_TO_2300(2.6),
    FROM_2301_TO_2400(2.8),
    FROM_2401_TO_2500(3.0),
    OVER_2501(3.5);

    private double multiplier;

    WoWArenaBracket(double multiplier) {
        this.multiplier = multiplier;
    }

    public double getMultiplier() {
        return multiplier;
    }

    public static WoWArenaBracket safeValueOf(String bracketString) {
        try {
            return valueOf(bracketString);
        } catch (IllegalArgumentException ie) {
            return null;
        }
    }
}
