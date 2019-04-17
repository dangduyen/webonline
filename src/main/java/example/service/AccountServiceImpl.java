package example.service;


import example.dao.AccountDAO;
import example.models.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service("accountService")
@Transactional
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDAO accountDAO;
	
	@Override
	public Account findByUsernameAndPassword(String username, String password) {
		return accountDAO.findByUsernameAndPassword(username, password);
	}

}
