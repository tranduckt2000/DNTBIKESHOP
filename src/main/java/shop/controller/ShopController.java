package shop.controller;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dao.BicycleDAO;
import shop.dao.OrderDAO;
import shop.dao.ShopCartDAO;
import shop.dao.TransactionDAO;
import shop.entity.Bicycle;
import shop.entity.Order;
import shop.entity.ShopCart;
import shop.entity.Transaction;
import shop.entity.User;
import shop.service.BicycleTwo;
import shop.service.ShopService;

@Transactional
@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
    BicycleDAO bicycleDao;
	
	@Autowired
	ShopCartDAO cartDao;
	
	@Autowired
	TransactionDAO transactionDao;
	
	@Autowired
	OrderDAO orderDao;
	
	// Mapping jsp
	@RequestMapping("main")
	public String index(ModelMap model, HttpServletRequest request) {
		List<Bicycle> list=bicycleDao.getListBicycle();
		for(Bicycle i: list) {
			System.out.println(i.getImage());
		}
		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(2);
		pagedListHolder.setPageSize(12);
		model.addAttribute("pagedListHolder", pagedListHolder);
		model.addAttribute("bicycles",list);
		return "shop/main";
	}
	
	@RequestMapping("search")
	public String index1(ModelMap model,HttpServletRequest request) {
		
		String text=request.getParameter("searchInput");
		System.out.println(text);
		List<Bicycle> list=bicycleDao.getBicycleByName(text);
		for(Bicycle i: list) {
			System.out.print(i.getName());
		}
		PagedListHolder pagedListHolder = new PagedListHolder(list);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(2);
		pagedListHolder.setPageSize(12);
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		model.addAttribute("bicycles",list);
		return "shop/main";
	}
	
	
	// cart
	@RequestMapping(value="cart",method = RequestMethod.GET)
	public String cart(ModelMap model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		if (user==null) {
			return "redirect:/pages/error.htm";
		}
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		for (ShopCart cart:list) {
			Bicycle flo=cart.getBicycle();
			BigDecimal sale=(flo.getPrice().multiply(BigDecimal.valueOf(flo.getDiscount()))).divide(BigDecimal.valueOf(100));
			cart.setAmount(flo.getPrice().add(sale.multiply(BigDecimal.valueOf(-1))));
		}
		
		model.addAttribute("subTotal",ShopService.subTotal(list));
		model.addAttribute("ship", ShopService.ship(list));
		model.addAttribute("carts",list);
		return "shop/cart";
	}
	
	@RequestMapping(value="cart/insert/{floId}",method = RequestMethod.GET)
	public String cartInsert(ModelMap model,@PathVariable("floId") int floId, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		// sá»‘ lÆ°á»£ng khi add vÃ o giá»� hÃ ng
		int sl;
		if (request.getParameter("qtt")==null) sl=1;
		else sl = Integer.parseInt(request.getParameter("qtt"));
		
		// xá»­ lÃ½ trÃ¹ng cart 
		ShopCart cartCopy=cartDao.getCartByUserFlo(user.getId(), floId);
		if (cartCopy!=null) {
			cartCopy.setQuantity(cartCopy.getQuantity()+sl);
			System.out.println(sl+" - "+cartCopy.getQuantity());
			cartDao.createOrUpdate(cartCopy);
		}
		else {
			Bicycle flo= bicycleDao.getBicycleById(floId);
			if (flo.getDiscount()==null) flo.setDiscount(0);
			BigDecimal sale=(flo.getPrice().multiply(BigDecimal.valueOf(flo.getDiscount()))).divide(BigDecimal.valueOf(100));
			ShopCart cart=new ShopCart(0,sl,flo.getPrice().add(sale.multiply(BigDecimal.valueOf(-1))),false,user,flo);
			cartDao.createOrUpdate(cart);
		}
		return "redirect:/shop/cart.htm";
	}
	
	@RequestMapping(value="cart/update",method = RequestMethod.GET)
	public String cartUpdate(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		for(ShopCart item : list) {
			//System.out.println(request.getParameter("qtt" + item.getId()));
			int sl = Integer.parseInt(request.getParameter("qtt" + item.getId()));
			item.setQuantity(sl);
			cartDao.createOrUpdate(item);
		}
		return "redirect:/shop/cart.htm";
	}
	
	@RequestMapping(value="cart/delete/{id}",method = RequestMethod.GET)
	public String cartDelete(ModelMap model,@PathVariable("id") int id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		// check delete true user
		ShopCart cart=cartDao.getCartById(id);
		if (cart.getUser().getId() != user.getId()) {
			System.out.print(user.getId());
			return "pages/error404";
		}
		
		cartDao.delete(id);
		return "redirect:/shop/cart.htm";
	}
	
	
	
	// product_detail
	@RequestMapping(value="product_detail/{floId}",method = RequestMethod.GET)
	public String product_detail(ModelMap model, @PathVariable("floId") int floId) {
		Bicycle flo=bicycleDao.getBicycleById(floId);
		model.addAttribute("bicycle", flo);
		return "shop/product_detail";
	}
	
	
	//checkout
	@RequestMapping(value="checkout",method = RequestMethod.GET)
	public String checkout(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		model.addAttribute("carts",list);
		
		model.addAttribute("subTotal",ShopService.subTotal(list));
		model.addAttribute("ship", ShopService.ship(list));
		model.addAttribute("detailTransaction", new Transaction());
		String message="Do you want to ship to a different address? Edit form below.";
		model.addAttribute("message", message);
		return "shop/checkout";
	}
	
	@RequestMapping(value="checkout",method = RequestMethod.POST)
	public String checkoutSave(ModelMap model, HttpServletRequest request,@Validated @ModelAttribute("detailTransaction") Transaction trans,
			BindingResult errors) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userLogin");
		List<ShopCart> list=cartDao.getCartByUser(user.getId());
		
		if (errors.hasErrors()) {
			model.addAttribute("carts",list);
			model.addAttribute("subTotal",ShopService.subTotal(list));
			model.addAttribute("ship", ShopService.ship(list));
			String message="Do you want to ship to a different address? Edit form below.";
			model.addAttribute("message", message);
			return "shop/checkout";
		}
		else {
			boolean k=true;
			boolean kt=false;
			
			if (list.size()!=0) {
				trans.setStatus(false);
				trans.setUser(user);
				trans.setAmount(ShopService.subTotal(list).add(ShopService.ship(list)));
				trans.setCreated(null);
				kt=transactionDao.createOrUpdate(trans);
			}
			if (kt) {
				DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
				for(ShopCart cart : list) {
				    LocalDateTime now = LocalDateTime.now();  
					Order order=new Order(0, cart.getQuantity(), cart.getAmount(), dtf.format(now), false, trans,cart.getBicycle());
					boolean kt2=orderDao.createOrUpdate(order);
					if (kt2) cart.setStatus(true);
					else k=false;
				}		
			}
			
			String message="";
			if ( !k || !kt ) message="Place Order failed, Check your Cart or Send Message to DNT BicycleShop";
			else {
				message="Place Order Success, Return shop to continue buy";
				model.addAttribute("listCarts",mc.dem(request));
				model.addAttribute("sizelistCarts",mc.size(request));
				model.addAttribute("totalCarts",mc.total(request));
			}
			model.addAttribute("message", message);
			
			return "pages/thanks";
		}
	}
	
	@Autowired
	ModelController mc;
	
	@ModelAttribute("listCarts")
	public List<ShopCart> dem(HttpServletRequest request) {
		return mc.dem(request);
	}
	
	@ModelAttribute("sizelistCarts")
	public int size(HttpServletRequest request) {
		return mc.size(request);
	}
	
	@ModelAttribute("totalCarts")
	public BigDecimal total(HttpServletRequest request) {
		return mc.total(request);
	}
	
	// show feature product
	
		@ModelAttribute("TopBicycle")
		public List<BicycleTwo> arrange() {
			List<BicycleTwo> list=new ArrayList<BicycleTwo>();
			
			List<Bicycle> listFlo=mc.arrange(0,list.size());
			
			for (int i=0;i<listFlo.size()/2;i++) {
				Bicycle f1=listFlo.get(i);
				Bicycle f2=listFlo.get(i+6);
				list.add(new BicycleTwo(f1,f2));
			}
			return list;
		}
}
