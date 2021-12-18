package com.todolist.myapp.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.todolist.myapp.TodoList.TodoListVO;

@Service
public class UserServiceImpl {
	
	@Autowired
	UserDAO userDAO;
	
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public int addUser(UserVO vo) {
		return userDAO.addUser(vo);
	}
	
	public int deleteUser(int sid) {
		return userDAO.deleteUser(sid);
	}
	
	public List<UserVO> getUserList() {
		return userDAO.getUserList();
	}
	
	public UserVO getOneUser(int sid) {
		return userDAO.getOneUser(sid);
	}
	
	public int updateUser(UserVO vo) {
		return userDAO.updateUser(vo);
	}
}
