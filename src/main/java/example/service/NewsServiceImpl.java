package example.service;

import example.dao.NewsDAO;
import example.models.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;


@Service("newsService")
@Transactional
public class NewsServiceImpl implements NewsService{
	
	@PersistenceContext
    private EntityManager entityManager;
	@Autowired
	public NewsDAO newsDAO;
	
	public void saveNews(News news) {
		newsDAO.save(news);
	}
	
	public void deleteNews(int id) {
		newsDAO.deleteById(id);
	}
	
	public News findNews(int id) {
		return newsDAO.findById(id).get();
	}
	
	public List<News> findAllNews(){
		List<News> lstAllNews=new ArrayList<>();
		
		List<News> lstTemp=(List<News>) newsDAO.findAll();
		
		for(int index=lstTemp.size()-1;index>=0;index--) {
			lstAllNews.add(lstTemp.get(index));
		}
		return lstAllNews;
	}
	
	public List<News> searchNews(String searchContent){
		System.out.println("searchcontent : " + searchContent);
		StoredProcedureQuery query = entityManager.createStoredProcedureQuery("SearchNews");
		query.registerStoredProcedureParameter(1, String.class, ParameterMode.IN);
		query.setParameter(1, searchContent);

		System.out.println(query);

		List<Object[]> storedProcedureResults = query.getResultList();
		//lstAllNews= query.getResultList();
		List<News> lstAllNews=new ArrayList<>(storedProcedureResults.size());

		for(Object[] item : storedProcedureResults){
			News news = new News();
			news.setId((int)item[0]);
			news.setNews_title(String.valueOf(item[1]));
			news.setNews_content(String.valueOf(item[2]));
			news.setNews_image(String.valueOf(item[3]));
			news.setDate_created(Date.valueOf(String.valueOf(item[4])));
			news.setNews_file(String.valueOf(item[5]));
//			lstAllNews.add(new News((int)item[0], (String)item[1],  (String) item[2], (Date) item[3], (String) item[4], (String) item[5]));
			lstAllNews.add(news);
			System.out.println((String)item[1]);
		}
		return lstAllNews;

	}
}
