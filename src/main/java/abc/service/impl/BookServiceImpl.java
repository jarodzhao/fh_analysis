package abc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import abc.dao.A1BookDao;
import abc.dao.A2BookDao;
import abc.domain.Book;
import abc.service.BookService;
import abc.util.PageHelper;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private A1BookDao a1BookDao;
	
	@Autowired
	private A2BookDao a2BookDao;
	
	public Book get(int id) {
		return a1BookDao.get(id);
	}

	public void save(Book book) {
		a1BookDao.save(book);
		a2BookDao.save(book);
	}

	public void update() {
		a1BookDao.updateAll();
	}

	public void delete(Book book) {
		a1BookDao.delete(book);
	}

	public List<Book> getBookList() {
		return a1BookDao.getAll();
	}

	@Override
	public List<Book> get(PageHelper ph) {
		return a1BookDao.get(ph);
	}

	@Override
	public Long getTotal(String sql) {
		return a1BookDao.count(sql);
	}

	@Override
	public List<String> getAllType() {
		return a1BookDao.getAllType();
	}

	@Override
	public List<Book> getListByType(PageHelper ph) {
		return a1BookDao.getByType(ph);
	}

}
