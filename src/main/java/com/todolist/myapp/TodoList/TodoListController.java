package com.todolist.myapp.TodoList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.todolist.myapp.User.*;

@Controller
public class TodoListController {

	@Autowired
	TodoListService todolistService;
	
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping(value = "/todo/list", method = RequestMethod.GET)
	public String itemList(Model model, HttpSession session) {
		
		UserVO vo = (UserVO) session.getAttribute("login");
		model.addAttribute("item", todolistService.getItemList(vo.getSid()));
		model.addAttribute("user", vo);
		
		return "list";
	}
	
	@RequestMapping(value = "/todo/add", method = RequestMethod.GET)
	public String addItem() {
		return "additem";
	}
	
	@RequestMapping(value = "/todo/addok", method = RequestMethod.GET)
	public String addItemOK(Model model, TodoListVO vo, HttpSession session) {
		UserVO uservo = (UserVO) session.getAttribute("login");
		
		int i = todolistService.insertItem(vo);
		
		if(i == 0)
			System.out.println("데이터 추가 실패 ");
		else
			System.out.println("데이터 추가 성공!");
		
		i = todolistService.updateItemId(uservo);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/todo/edititem/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		TodoListVO todolistVO = todolistService.getItem(id);
		model.addAttribute("todolistVO", todolistVO);
		return "edititem";
	}
	
	@RequestMapping(value = "/todo/editok", method = RequestMethod.GET)
	public String editItemOK(TodoListVO vo) {
		int i = todolistService.updateItem(vo);
		if(i == 0)
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!");
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/todo/deleteok/{id}", method = RequestMethod.GET)
	public String deleteItemOK(@PathVariable("id") int id) {
		int i = todolistService.deleteItem(id);
		if(i == 0)
			System.out.println("데이터 삭제 실패 ");
		else
			System.out.println("데이터 삭제 성공!");
		
		return "redirect:../list";
	}
}
