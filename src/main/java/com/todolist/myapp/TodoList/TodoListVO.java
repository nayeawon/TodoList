package com.todolist.myapp.TodoList;

public class TodoListVO {
	private int id;
	private String title;
	private String description;
	private String category;
	private String dueDate;
	private int isCompleted;
	private int importance;
	private int userid;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getDueDate() {
		return dueDate;
	}
	
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	
	public int getIsCompleted() {
		return isCompleted;
	}
	
	public void setIsCompleted(int isCompleted) {
		this.isCompleted = isCompleted;
	}
	
	public int getImportance() {
		return importance;
	}
	
	public void setImportance(int importance) {
		this.importance = importance;
	}
	
	public int getUserId() {
		return userid;
	}
	
	public void setUserId(int userid) {
		this.userid = userid;
	}
}
