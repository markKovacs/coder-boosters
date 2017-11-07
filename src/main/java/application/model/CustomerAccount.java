package application.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@PrimaryKeyJoinColumn(referencedColumnName="id")
@DiscriminatorValue(value = "customer")
public class CustomerAccount extends Account {

/*    @ElementCollection
    @CollectionTable(
            name = "game_account",
            joinColumns = @JoinColumn(name = "customer_id")
    )
    @Column(name = "game_acc_name")*/
    @OneToMany(mappedBy = "account")
    private List<GameAccount> gameAccountList = new ArrayList<>();

    public CustomerAccount() {
    }

    public CustomerAccount(String accountName, String email, String password) {
        super(accountName, email, password);
    }

    public void addGameAccount(GameAccount gameAccount) {
        this.gameAccountList.add(gameAccount);
    }

    public void removeGameAccount(Long gameAccId) {
        GameAccount gameAccount = gameAccountList.stream()
                .filter(g -> g.getId() == gameAccId)
                .findFirst().orElse(null);

        if (gameAccount == null) {
            return;
        }

        this.gameAccountList.remove(gameAccount);
    }

    public List<GameAccount> getGameAccountList() {
        return gameAccountList;
    }

    public void setGameAccountList(List<GameAccount> gameAccountList) {
        this.gameAccountList = gameAccountList;
    }
}
