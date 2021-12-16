package com.todolist.myapp.TodoList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.todolist.myapp.User.UserVO;

@Repository
public class TodoListDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int insertItem(TodoListVO vo) {
		int result = sqlSession.insert("TodoList.insertItem", vo);
		return result;
	}

	public int updateItemId(UserVO vo) {
		int result = sqlSession.update("TodoList.updateItemId", vo);
		return result;
	}

	public int updateItem(TodoListVO vo) {
		int result = sqlSession.update("TodoList.updateItem", vo);
		return result;
	}

	public int deleteItem(int id) {
		int result = sqlSession.delete("TodoList.deleteItem", id);
		return result;
	}

	public TodoListVO getItem(int id) {
		TodoListVO one = sqlSession.selectOne("TodoList.getItem", id);
		return one;
	}

	public List<TodoListVO> getItemList(int id) {
		List<TodoListVO> list = sqlSession.selectList("TodoList.getItemList", id);
		return list;
	}
}
