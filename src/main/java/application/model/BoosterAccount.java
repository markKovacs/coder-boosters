package application.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "booster")
public class BoosterAccount extends Account {

    public BoosterAccount() {
    }

}
