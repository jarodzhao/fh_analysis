package abc.dao;

import java.util.List;

import abc.domain.Book;
import abc.util.PageHelper;

public interface A1BookDao {

	public void save(Book book);
	
	public void delete(Book book);
	
	public Book get(int id);
	
	public void updateAll();
	
	public List<Book> getAll();

	public List<Book> get(PageHelper ph);
	
	public Long count(String sql);
	
	public Long typeCount(String sql);
	
	public List<String> getAllType();
	
	public List<Book> getByType(PageHelper ph);
}
