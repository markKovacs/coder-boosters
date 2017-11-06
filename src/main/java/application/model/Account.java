package application.model;

import javax.persistence.*;

@NamedQuery(name = "findAccountById", query = "SELECT a FROM Account a WHERE id = :accountId")
@Entity
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Account() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

}
