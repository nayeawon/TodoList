package com.todolist.myapp.User;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	
	public int addUser(UserVO vo) {
		return sqlSession.insert("User.addUser", vo);
	}

	public List<UserVO> getUserList() {
		return sqlSession.selectList("User.getUserList");
	}

	public int deleteUser(int sid) {
		return sqlSession.delete("User.deleteUser", sid);
	}

	public UserVO getOneUser(int sid) {
		return sqlSession.selectOne("User.getOneUser", sid);
	}
	
	public int updateUser(UserVO vo) {
		return sqlSession.update("User.updateUser", vo);
	}

}
