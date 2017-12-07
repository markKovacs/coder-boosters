package application.model.order.CSGO;

public enum CSGODivision{

    SILVER_1(10L, "SILVER_1"),
    SILVER_2(11L, "SILVER_2"),
    SILVER_3(12L, "SILVER_3"),
    SILVER_4(13L, "SILVER_4"),
    SILVER_ELITE(14L, "SILVER_ELITE"),
    SILVER_ELITE_MASTER(15L, "SILVER_ELITE_MASTER"),
    GOLD_NOVA_1(16L, "GOLD_NOVA_1"),
    GOLD_NOVA_2(17L, "GOLD_NOVA_2"),
    GOLD_NOVA_3(18L, "GOLD_NOVA_3"),
    GOLD_NOVA_MASTER(19L, "GOLD_NOVA_MASTER"),
    MASTER_GUARDIAN_1(20L, "MASTER_GUARDIAN_1"),
    MASTER_GUARDIAN_2(21L, "MASTER_GUARDIAN_2"),
    MASTER_GUARDIAN_ELITE(22L, "MASTER_GUARDIAN_ELITE"),
    DISTINGUISHED_MASTER_GUARDIAN(22L, "DISTINGUISHED_MASTER_GUARDIAN"),
    LEGENDARY_EAGLE(23L, "LEGENDARY_EAGLE"),
    LEGENDARY_EAGLE_MASTER(24L, "LEGENDARY_EAGLE_MASTER"),
    SUPREME_MASTER_FIRST_CLASS(25L, "SUPREME_MASTER_FIRST_CLASS"),
    THE_GLOBAL_ELITE(0L, "THE_GLOBAL_ELITE");

    private final Long price;
    private final String division;

    CSGODivision(Long price, String division){
        this.price = price;
        this.division = division;
    }

    public Long getPrice() {
        return price;
    }

    public String getDivision() {
        return division;
    }

    public static CSGODivision safeValueOf(String divisionString){
        try{
            return valueOf(divisionString);
        } catch (IllegalArgumentException ie){
            return null;
        }
    }
}
