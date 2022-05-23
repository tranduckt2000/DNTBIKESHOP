package shop.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import shop.bean.UploadFile;
import shop.dao.CategoryDAO;
import shop.dao.ColorDAO;
import shop.dao.BicycleDAO;
import shop.dao.ManageBicycleDAO;
import shop.entity.Admin;
import shop.entity.Category;
import shop.entity.Color;
import shop.entity.Bicycle;
import shop.entity.User;

@Controller
@RequestMapping("/admin/bicycle")
public class ManageBicycleController {
	@Autowired
	ManageBicycleDAO manageBicycleDAO;
	
	@Autowired
	BicycleDAO bicycleDao;
	
	@Autowired
	ColorDAO colorDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	@Qualifier("uploadfile")
	UploadFile baseUploadfile;
	
	@Autowired
	ServletContext context;
	
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String home(ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("adminLogin");
		
		if (admin==null) {
			return "pages/error404";
		}
		
		List<Bicycle> bicycleList = manageBicycleDAO.getListBicycle();
		PagedListHolder pagedListHolder = new PagedListHolder(bicycleList);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(2);
		pagedListHolder.setPageSize(5);
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		return "admin/bicycle";
	}
	
	@ModelAttribute("bicycleNew")
	public Bicycle bicycleNew() {
		return new Bicycle();
	}
	@ModelAttribute("bicycleEdit")
	public Bicycle bicycleEdit() {
		return new Bicycle();
	}
	
	@ModelAttribute("getListCL")
	public List<Color> getListColors() {
		List<Color> list = colorDAO.getListColor();
		return list;
	}
	@ModelAttribute("getListCA")
	public List<Category> getListCategory() {
		List<Category> list = categoryDAO.getListCategory();
		return list;
	}
	
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insert(ModelMap model, HttpServletRequest request,   @ModelAttribute("bicycleNew") Bicycle bicycleNew, @RequestParam("photo") MultipartFile photo,   BindingResult errors) {
		model.addAttribute("them_saidinhdang", errors.hasErrors());
		model.addAttribute("bicycleNew", bicycleNew);
		
		if(bicycleNew.getName().trim().length() == 0) {
			errors.rejectValue("name", "bicycleNew", "Vui lÃ²ng nháº­p há»� tÃªn");
		}
		if(bicycleNew.getPrice() == null) {
			errors.rejectValue("price", "bicycleNew", "Vui lÃ²ng chá»�n giÃ¡");
		}
		if(errors.hasErrors()) {
			model.addAttribute("message", "Vui lÃ²ng nháº­p Ä‘áº§y Ä‘á»§ thÃ´ng tin!");
			return home(model, request);
		}
		try {
			String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
			 String fileName = date + photo.getOriginalFilename();
			String photoPath = baseUploadfile.getBasePath() + File.separator + fileName;
			photo.transferTo(new File(photoPath));
			Thread.sleep(2000);
			bicycleNew.setImage(fileName);
			
			// add color vs category
			List<Color> lc=new ArrayList<Color>();
			lc.add(colorDAO.getColorById(10));
	
			List<Category> lca=new ArrayList<Category>();
			lca.add(categoryDAO.getCategoryById(1));
			bicycleNew.setCategories(lca);
			bicycleNew.setColors(lc);
			
			model.addAttribute("insert", manageBicycleDAO.save(bicycleNew));
			return home(model, request);
		} catch (Exception e) {
			// TODO: handle exception	
			model.addAttribute("insert", false);
			model.addAttribute("bicycleNew", bicycleNew);
			return home(model, request);
		}
	}
	
	@RequestMapping(value="edit/{id}", method=RequestMethod.GET)
	public String showFormEdit(ModelMap model,HttpServletRequest request, @ModelAttribute("bicycleEdit") Bicycle bicycleEdit, @PathVariable String id) {
		model.addAttribute("formEdit", true);
		model.addAttribute("bicycleEdit", manageBicycleDAO.getBicycleById(id));
		System.out.println(manageBicycleDAO.getBicycleById(id));
		return home(model, request);
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(ModelMap model,HttpServletRequest request, @ModelAttribute("bicycleEdit") Bicycle bicycleEdit, @RequestParam("photo") MultipartFile photo, BindingResult errors) {
		model.addAttribute("sua_saidinhdang", errors.hasErrors());
		model.addAttribute("bicycleEdit", bicycleEdit);
		if(bicycleEdit.getName().trim().length() == 0) {
			errors.rejectValue("name", "bicycleNew", "Vui lòng nhập tên");
		}
		if(bicycleEdit.getPrice() == null) {
			errors.rejectValue("price", "bicycleNew", "Vui lòng nhập giá");
		}
		if(errors.hasErrors()) {
			return home(model, request);
		}
		if(photo.isEmpty()) {
			System.out.print(bicycleEdit.getId());
			Bicycle bicycle_tam= bicycleDao.getBicycleById(bicycleEdit.getId());
			bicycleEdit.setImage(bicycle_tam.getImage());
			model.addAttribute("update", manageBicycleDAO.update(bicycleEdit));
			model.addAttribute("bicycleEdit", new Bicycle());
			return home(model, request);
		} else {
			try {
				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String fileName = date + photo.getOriginalFilename();
				String photoPath = baseUploadfile.getBasePath() + File.separator + fileName;
				photo.transferTo(new File(photoPath));
				Thread.sleep(2000);
				bicycleEdit.setImage(fileName);
				model.addAttribute("update", manageBicycleDAO.update(bicycleEdit));
				model.addAttribute("bicycleEdit", new Bicycle());
				return home(model, request);
			} catch (Exception e) {
				// TODO: handle exception
				model.addAttribute("update", false);
				model.addAttribute("bicycleEdit", bicycleEdit);
				return home(model, request);
			}
		}
	}
	
	@RequestMapping(value = "delete", method=RequestMethod.POST)
	public String delete(ModelMap model,HttpServletRequest request, @RequestParam("id") Integer id) {
		System.out.println("id = " + id);
		Bicycle f = new Bicycle();
		f.setId(id);
		model.addAttribute("delete", manageBicycleDAO.delete(f));
		return home(model, request);
	}
	
	@RequestMapping(value= "", params = "btnsearch")
	public String searchBicycle(HttpServletRequest request, ModelMap model) {
		List<Bicycle> bicycles = manageBicycleDAO.search(request.getParameter("searchInput"));
		PagedListHolder pagedListHolder = new PagedListHolder(bicycles);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setMaxLinkedPages(2);
		pagedListHolder.setPageSize(5);
		model.addAttribute("pagedListHolder", pagedListHolder);
		
		return "admin/bicycle";
	}
}
