package shop.controller;

import java.util.regex.Matcher;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import shop.bean.Mailer;
import shop.dao.AdminDAO;
import shop.dao.UserDAO;
import shop.entity.Admin;
import shop.entity.User;
import shop.service.ShopService;


@Transactional
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	AdminDAO adminDao;
	
	
	@Autowired
	Mailer mailer;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("detailAdmin", new Admin());
		return "admin/login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginValidation(HttpSession session, ModelMap model,@ModelAttribute("detailAdmin") Admin admin,
			BindingResult errors) {
		
		if (admin.getUsername().trim().length() == 0) {
			errors.rejectValue("username", "admin", "Username cannot be blank");
		}
		if (admin.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "admin", "Password cannot be blank");
		}

		if (errors.hasErrors()) {
			return "admin/login";
		} else {
			String pass=ShopService.encryptPassword(admin.getPassword().trim());
			if (adminDao.login(admin.getUsername(), pass) == null) {
				model.addAttribute("message", "Invalid Username or Password");
				model.addAttribute("detailAdmin", new Admin());
				return "admin/login";
			} else {
				Admin _admin = adminDao.login(admin.getUsername(), pass);
				System.out.println("fullname...." + _admin.getName());
				session.setAttribute("adminLogin", _admin);
				return "redirect:/admin/bicycle.htm";
			}
		}

	}
	
	// logout
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		// remove all session

		Admin admin = (Admin) session.getAttribute("adminLogin");
		if (admin != null) {
			session.removeAttribute("adminLogin");
		}
		
		return "redirect:/";

		}
	
	
	// forgotPassword
	@RequestMapping(value="forgotPassword", method = RequestMethod.GET)
	public String forgotPassword() {
		return "admin/forgotPassword";
	}
	
	@RequestMapping(value = "forgotPassword", method = RequestMethod.POST)
	public String sendEmail(ModelMap model, @RequestParam("username") String username) {
		
		
		Admin admin = adminDao.getDetailByUsername(username.trim());
		if (admin != null) {
			
			int random = (int) Math.floor(((Math.random() * 899999) + 100000));/// random sinh sá»‘ cÃ³ 6 chá»¯ sá»‘
			String passReset=String.valueOf(random);
			
			String from = "DNT_BICYCLE_SHOP_2021";
			String subject = "RESET ADMIN'S PASSWORD";
			String body = "Admin's Username: "+ username.trim() + "\nYour New Password: "+passReset;
			
			String email="dntbicycleshop@gmail.com";
			admin.setPassword(ShopService.encryptPassword(passReset));
			adminDao.createOrUpdate(admin);
			mailer.send(from, email, subject, body);
			model.addAttribute("success", "Send Success. Check your email to reset password.");
		}
		else {
			model.addAttribute("message", "Admin's account with this username does not exists");
		}
		
		return "admin/forgotPassword";

	}
	
	
	//register
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		model.addAttribute("detailAdmin", new Admin());
		return "admin/register";
	}
	// create -register
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String create(ModelMap model, @Validated @ModelAttribute("detailAdmin") Admin admin,
		 BindingResult errors) {
	

			if (errors.hasErrors()) {
				return "admin/register";

			} else {
				if (adminDao.getDetailByUsername(admin.getUsername().trim())!=null) {
					model.addAttribute("message","Admin's account with this Username already exists");
					return "admin/register";
				} 
				admin.setPassword(ShopService.encryptPassword(admin.getPassword().trim()));
				adminDao.createOrUpdate(admin);
				return "admin/login";
			}
	}
	
}
