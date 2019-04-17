package example.service;


import example.dao.HomepageDAO;
import example.models.HomePage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("homepageService")
@Transactional
public class HomepageServiceImpl implements HomepageService {
	@Autowired
	public HomepageDAO homepageDAO;
	
	public void savePage(HomePage homepage) {
		homepageDAO.save(homepage);
	}
	
	public HomePage findHomeNews(int id) {
		return homepageDAO.findById(id).get();
	}
	
	public List<HomePage> findAllHomeNewses() {
		List<HomePage> lstNewse=new ArrayList<HomePage>();
		for(HomePage news:homepageDAO.findAll()) {
			lstNewse.add(news);
		}
		return lstNewse;
	}
	
}
