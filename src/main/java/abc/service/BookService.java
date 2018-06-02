package abc.service;

import java.util.List;
import abc.domain.Book;
import abc.util.PageHelper;

public interface BookService {

	public Book get(int id);
	
	public void save(Book book);
	
	public void update();
	
	public void delete(Book book);
	
	public List<Book> getBookList();
	
	public List<Book> get(PageHelper ph);

	public Long getTotal(String sql);
	
	public List<String> getAllType();
	
	public List<Book> getListByType(PageHelper ph);
}
