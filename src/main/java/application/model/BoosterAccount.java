package application.model;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "booster")
@Table(name = "booster_account")
public class BoosterAccount extends Account {

    public BoosterAccount() {
    }

}
