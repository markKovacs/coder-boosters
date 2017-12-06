package application.model.order;

public enum OWDivision {
    BRONZE,
    SILVER,
    GOLD,
    PLATINUM,
    DIAMOND,
    MASTER,
    GRANDMASTER,
    TOP_500;

    public static OWDivision safeValueOf(String divisionString){
        try{
            return valueOf(divisionString);
        } catch (IllegalArgumentException ie){
            return null;
        }
    }
}
