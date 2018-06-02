package abc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import abc.dao.A1BookDao;
import abc.domain.Book;
import abc.util.PageHelper;

@SuppressWarnings("unchecked")
@Repository
public class A1BookDaoImpl implements A1BookDao {

	@Autowired
	@Qualifier("sessionFactory1")
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(Book book) {
		if (null != book) {
			getCurrentSession().save(book);
		}
	}

	public Book get(int id) {
		return (Book) getCurrentSession().get(Book.class, id);
	}

	@Override
	public void updateAll() {

		// 更新所有记录,测试事务
		try {
			Book book;
			for (int i = 1; i < 20; i++) {
				book = (Book) sessionFactory.getCurrentSession().get(Book.class, i);
				book.setDescription("赵海涛......zhaohaitao");
				sessionFactory.getCurrentSession().update(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Book> getAll() {
		Query query = getCurrentSession().createQuery("from Book");
		return query.list();
	}

	@Override
	public void delete(Book book) {
		getCurrentSession().delete(book);
	}

	@Override
	public List<Book> get(PageHelper ph) {

		StringBuilder sql = new StringBuilder("from Book");

		String search = ph.getSearch();
		String order = ph.getOrder(); // 顺序、倒序
		String sort = ph.getSort(); // 排序字段

		if (null != search) {
			sql.append(" where name like '%").append(search).append("%'");
		}

		if (null != sort) {
			
			if ("statName".equals(sort))
				sort = "stat";					//变量重新赋值，又创建了一个变量！怎么写比较合理
			
			sql.append(" order by ").append(sort);

			if ("asc".equals(order)) {
				sql.append(" asc ");
			} else {
				sql.append(" desc ");
			}
		}

		Query query = getCurrentSession().createQuery(sql.toString());

		query.setFirstResult(ph.getOffset()).setMaxResults(ph.getLimit());

		return query.list();
	}

	@Override
	public Long count(String sql) {
		Query query = getCurrentSession().createQuery(sql);
		return (Long) query.uniqueResult();
	}

	@Override
	public List<String> getAllType() {
		return getCurrentSession().createQuery("SELECT DISTINCT type FROM Book").list();
	}

	@Override
	public List<Book> getByType(PageHelper ph) {

		StringBuilder sql = new StringBuilder("from Book");

		String type = ph.getType();

		if (null != type)
			sql.append(" where type = '").append(type).append("'");

		Query query = getCurrentSession().createQuery(sql.toString());

		query.setFirstResult(ph.getOffset()).setMaxResults(ph.getLimit());

		return query.list();
	}

	@Override
	public Long typeCount(String sql) {
		Query query = getCurrentSession().createQuery(sql);
		return (Long) query.uniqueResult();
	}
}
