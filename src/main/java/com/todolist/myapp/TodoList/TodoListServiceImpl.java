package com.todolist.myapp.TodoList;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.todolist.myapp.User.UserVO;

@Service
public class TodoListServiceImpl implements TodoListService {
	
	@Autowired
	TodoListDAO todoListDAO;

	@Override
	public int insertItem(TodoListVO vo) {
		return todoListDAO.insertItem(vo);
	}

	@Override
	public int updateItemId(UserVO vo) {
		return todoListDAO.updateItemId(vo);
	}

	@Override
	public int updateItem(TodoListVO vo) {
		return todoListDAO.updateItem(vo);
	}

	@Override
	public int deleteItem(int id) {
		return todoListDAO.deleteItem(id);
	}

	@Override
	public TodoListVO getItem(int id) {
		return todoListDAO.getItem(id);
	}

	@Override
	public List<TodoListVO> getItemList(int id) {
		return todoListDAO.getItemList(id);
	}

}
