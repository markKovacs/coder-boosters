package application.model.order;

public class LoLBoostOrder extends BoostOrder {

    @Override
    public void calcBasePrice() {

        // TODO: implement!!!
        double calcedPrice = 100;

        this.basePrice = calcedPrice;
    }

    private enum LeagueDivision {
        Challenger,
        Master,
        Diamond_I,
        Diamond_II,
        Diamond_III,
        Diamond_IV,
        Diamond_V,
        Platinum_I,
        Platinum_II,
        Platinum_III,
        Platinum_IV,
        Platinum_V,
        Gold_I,
        Gold_II,
        Gold_III,
        Gold_IV,
        Gold_V,
        Silver_I,
        Silver_II,
        Silver_III,
        Silver_IV,
        Silver_V,
        Bronze_I,
        Bronze_II,
        Bronze_III,
        Bronze_IV,
        Bronze_V
    }
}
