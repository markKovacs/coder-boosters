package application.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "customer")
@Table(name = "customer_account")
public class CustomerAccount extends Account {

    @OneToMany(
            mappedBy = "account",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<GameAccount> gameAccountList = new ArrayList<>();

    public CustomerAccount() {
    }

    public CustomerAccount(String accountName, String email, String password) {
        super(accountName, email, password);
    }

    public void addGameAccountBiDir(GameAccount gameAccount) {
        this.gameAccountList.add(gameAccount);
        gameAccount.setAccount(this);
    }

    public void removeGameAccount(Long gameAccId) {
        GameAccount gameAccount = gameAccountList.stream()
                .filter(g -> g.getId() == gameAccId)
                .findFirst().orElse(null);

        if (gameAccount == null) {
            return;
        }
        this.gameAccountList.remove(gameAccount);

        // TODO: make bidirectional??? maybe not needed because cascade...
    }

    public List<GameAccount> getGameAccountList() {
        return gameAccountList;
    }

    public void setGameAccountList(List<GameAccount> gameAccountList) {
        this.gameAccountList = gameAccountList;
    }

}
