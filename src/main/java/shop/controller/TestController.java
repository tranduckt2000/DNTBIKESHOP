package shop.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.AdminDAO;
import shop.dao.CategoryDAO;
import shop.dao.ColorDAO;
import shop.dao.BicycleDAO;
import shop.dao.OrderDAO;
import shop.dao.ShopCartDAO;
import shop.dao.TransactionDAO;
import shop.dao.UserDAO;
import shop.entity.Bicycle;

@Controller
@Transactional
public class TestController {
	
	@Autowired
	AdminDAO adminDao;
	
	@Autowired
	BicycleDAO bicycleDao;
	
	@Autowired
	UserDAO userDao;
	
	@Autowired
	ShopCartDAO shopCartDao;
	
	@Autowired
	TransactionDAO transactionDao;
	
	@Autowired
	OrderDAO orderDao;
	
	@Autowired
	ColorDAO colorDao;

	@Autowired
	CategoryDAO categoryDao;
	
	@Autowired
	ModelController mc;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String index() {
		List<Bicycle> listBicycle=mc.arrange(6,12);
		return "test";
	}
}
