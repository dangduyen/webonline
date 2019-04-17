package example.dao;

import example.models.HomePage;
import org.springframework.data.repository.CrudRepository;

public interface HomepageDAO extends CrudRepository<HomePage, Integer> {

}
