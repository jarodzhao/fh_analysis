package abc.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import abc.domain.Book;

@Service
@Transactional	//DAO 层注解
public class DefaultService {
	
	@Autowired
	@Qualifier("sessionFactory1")
	private SessionFactory sessionFactory;

	public void test() {
		
		Book book = new Book();
		book.setName("zht");
		book.setDescription(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));

		sessionFactory.getCurrentSession().save(book);
	}

	public Book createTB() {

		Session session = sessionFactory.getCurrentSession();
		Book book;

//		Transaction tx = session.beginTransaction();
		
		book = new Book();

		book.setName("miaomiao");
		book.setDescription(new SimpleDateFormat("H:mm:ss").format(new Date()));

		session.save(book);

		return book;
	}

	/**
	 * 返回当前日期是周几(数字)
	 * 
	 * @return 一周中的第几天(1代表星期一,7代表星期日)
	 */
	public int dayOfWeek() {

		boolean isFirstSunday = Calendar.getInstance().getFirstDayOfWeek() == Calendar.SUNDAY;

		int dayInWeek = Calendar.getInstance().get(Calendar.DAY_OF_WEEK);

		if (isFirstSunday) {
			dayInWeek = dayInWeek - 1;
			if (dayInWeek == 0)
				dayInWeek = 7;
		}
		return dayInWeek;
	}

	/**
	 * 返回给定日期是周几(数字)
	 * 
	 * @param d
	 *            给定的日期
	 * @return 一周中的第几天(1代表星期一,7代表星期日)
	 */
	public int dayOfWeek(Date d) {

		boolean isFirstSunday = Calendar.getInstance().getFirstDayOfWeek() == Calendar.SUNDAY;

		Calendar calendar = Calendar.getInstance();
		calendar.setTime(d);

		int dayInWeek = calendar.get(Calendar.DAY_OF_WEEK);

		if (isFirstSunday) {
			dayInWeek = dayInWeek - 1;
			if (dayInWeek == 0)
				dayInWeek = 7;
		}
		return dayInWeek;
	}

	/**
	 * 根据给定日期，获取上一个工作日（周一~周五）
	 * 
	 * @param d
	 *            给定的日期，Date 格式
	 * @return 上一个工作日，Date 格式
	 */
	public Date getXDay(Date d) {

		Calendar cal = Calendar.getInstance();

		// 根据 d 日期值获取前一个工作日
		int x = dayOfWeek(d);
		cal.setTime(d);

		if (1 == x) {
			cal.add(Calendar.DATE, -3);
		} else {
			cal.add(Calendar.DATE, -1);
		}

		return cal.getTime();
	}
}
