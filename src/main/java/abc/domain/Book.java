package abc.domain;

import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.Random;

/**
 * 实例化对象后需制定一个 id 才能正常使用，否则会报错！
 * @author zht
 */
@Entity
@Table(name = "t_book")
public class Book {

	@Id
	private Integer id;

	private String name;

	private String author;

	private String type;

	private Double price;

	private String description;

	private Byte stat;
	
	@Transient
	private String statName;

	public String getStatName() {

		// 0 未发布,1在库,2借出,3超期
		if (stat == null)
			stat = -1;
		
		switch (stat) {
		case 0:
			return "未发布";
		case 1:
			return "在库";
		case 2:
			return "借出";
		case 3:
			return "超期"; // 超期状态，前台数据整行着色提示
		default:
			return "<font style='color:#00F;'>状态错误</font>";
		}
	}

	public Book() {
	}

	public Book(String name, String author, String type, double price, String desc, byte stat) {
		this.id = new Random().nextInt(1000000);
		this.name = name;
		this.author = author;
		this.type = type;
		this.price = price;
		this.description = desc;
		this.stat = stat;
	}

	@Override
	public String toString() {
		StringBuilder ref = new StringBuilder();
		ref.append("id=").append(this.getId()).append(" | ");
		ref.append("name=").append(this.getName()).append(" | ");
		ref.append("author=").append(this.getAuthor()).append(" | ");
		ref.append("type=").append(this.getType()).append(" | ");
		ref.append("price=").append(this.getPrice()).append(" | ");
		ref.append("description=").append(this.getDescription()).append(" | ");
		ref.append("stat=").append(this.getStatName()).append(" | ");

		return ref.toString();
	}

	public Byte getStat() {
		return stat;
	}

	public void setStat(Byte stat) {
		this.stat = stat;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
