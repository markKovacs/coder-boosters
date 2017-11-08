package application.model;

import javax.persistence.*;

@Entity
@Table(name = "boost_order")
public class BoostOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * GameType:
     *      - eloBoost (target elo selected)
     *      - gameCount (number of games played)
     *      - winCount (based on difference: win-loss)
     *      - coaching (number of games coached... duo/solo???, hour-based???)
     *      -
     * Duo/Solo
     * Price(calculated by system)
     * BonusFee(%, added by user, default 0%)
     *
     * */

    public BoostOrder() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
