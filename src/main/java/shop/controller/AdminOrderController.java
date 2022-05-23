package shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.OrderDAO;
import shop.dao.TransactionDAO;
import shop.entity.Bicycle;
import shop.entity.Order;
import shop.entity.Transaction;
import shop.entity.User;
import shop.service.ShopService;

@Transactional
@Controller
@RequestMapping("/admin")
public class AdminOrderController {

	@Autowired
	TransactionDAO transactionDao;

	@Autowired
	OrderDAO orderDao;

	@RequestMapping(value = "chitiet", method = RequestMethod.GET)
	public String my_account(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Transaction> Trans = transactionDao.getListTrans();
		PagedListHolder pagedListHolder = new PagedListHolder(Trans);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(2);
		pagedListHolder.setPageSize(5);
		model.addAttribute("pagedListHolder", pagedListHolder);
//		model.addAttribute("Trans", Trans);
		return "admin/dsOrder";
	}

	@RequestMapping(value = "chitiet/userOrders/{idTrans}", method = RequestMethod.GET)
	public String userOrders(ModelMap model, @PathVariable("idTrans") int idTrans, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Order> orders = orderDao.getListOrderByTrans(idTrans);
		Transaction trans = transactionDao.getTransById(idTrans);
		model.addAttribute("subTotal1", ShopService.subTotal1(orders));
		model.addAttribute("ship1", ShopService.ship1(orders));
		model.addAttribute("trans", trans);
		model.addAttribute("orders", orders);
		return "admin/thongkeOrder";
	}
}
