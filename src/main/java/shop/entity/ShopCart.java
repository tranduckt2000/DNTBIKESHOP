package shop.entity;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ShopCart")
public class ShopCart {
	@Id
	@GeneratedValue
	private int id;
	private int quantity;
	private BigDecimal amount;
	private boolean status;
	
	@ManyToOne
	@JoinColumn(name="userID")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="idBicycle")
	private Bicycle bicycle;
	
	@Override
    public String toString() {
	    return "ShopCart [id=" + id + ", quantity=" + quantity + ", amount=" + amount + ", status=" + status +"]";
    }
	
	public ShopCart() {
		super();
	}

	public ShopCart(int id, int quantity, BigDecimal amount, boolean status, User user, Bicycle bicycle) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.amount = amount;
		this.status = status;
		this.user = user;
		this.bicycle = bicycle;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Bicycle getBicycle() {
		return bicycle;
	}

	public void setBicycle(Bicycle bicycle) {
		this.bicycle = bicycle;
	}
}
