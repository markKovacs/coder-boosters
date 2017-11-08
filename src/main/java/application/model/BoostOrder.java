package application.model;

import javax.persistence.*;

@Entity
@Table(name = "boost_order")
public class BoostOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public BoostOrder() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
