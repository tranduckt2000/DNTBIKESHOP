package shop.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name ="Color")
public class Color {
	@Id
	@GeneratedValue
	private int id;
	private String name;
	
	@ManyToMany(mappedBy="colors",fetch = FetchType.LAZY)
	List<Bicycle> bicycles= new ArrayList<>();

	@Override
    public String toString() {
	    return "Color [id=" + id +  ", name=" + name + "]";
    }

	
	public Color() {
		super();
	}


	public Color(int id, String name, List<Bicycle> flowers) {
		super();
		this.id = id;
		this.name = name;
		this.bicycles = bicycles;
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


	public List<Bicycle> getBicycles() {
		return bicycles;
	}


	public void setFlowers(List<Bicycle> bicycles) {
		this.bicycles = bicycles;
	}
	
	
	
}
