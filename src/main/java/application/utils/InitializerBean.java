package application.utils;

import application.model.account.BoosterAccount;
import application.model.account.CustomerAccount;
import application.repository.AccountRepository;
import org.springframework.stereotype.Component;

@Component
public class InitializerBean {

    public InitializerBean(AccountRepository accountRepository) {
        accountRepository.save(new CustomerAccount("mark", "mark@mark.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX"));
        accountRepository.save(new CustomerAccount("attila", "attila@attila.hu", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX"));
        accountRepository.save(new BoosterAccount("barna", "barna@elite.com", "sha1:64000:18:oyEUTFE4hzrGFlAC+iX0mviGuaSk7/F3:SkY3/+/Yv7oDmga2KGBeNdcX"));
    }

}
