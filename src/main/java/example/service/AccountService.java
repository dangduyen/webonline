package example.service;

import example.models.Account;

public interface AccountService {
	public Account findByUsernameAndPassword(String username, String password);
}
