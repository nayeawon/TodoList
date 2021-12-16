package com.todolist.myapp.TodoList;

import java.util.List;

import com.todolist.myapp.User.UserVO;

public interface TodoListService {
	public int insertItem(TodoListVO vo);
	public int updateItemId(UserVO uservo);
	public int updateItem(TodoListVO vo);
	public int deleteItem(int id);
	public TodoListVO getItem(int id);
	public List<TodoListVO> getItemList(int id);
}
