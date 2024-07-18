package com.chainsys.onlineexam.model;

import java.sql.Time;

public class UserSkills {
	
	int id;
	int userId;
	int skillId;
	int skillLevel;
	Time evaluatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getSkillId() {
		return skillId;
	}
	public void setSkillId(int skillId) {
		this.skillId = skillId;
	}
	public int getSkillLevel() {
		return skillLevel;
	}
	public void setSkillLevel(int skillLevel) {
		this.skillLevel = skillLevel;
	}
	public Time getEvaluatedAt() {
		return evaluatedAt;
	}
	public void setEvaluatedAt(Time evaluatedAt) {
		this.evaluatedAt = evaluatedAt;
	}
	public UserSkills(int id, int userId, int skillId, int skillLevel, Time evaluatedAt) {
		super();
		this.id = id;
		this.userId = userId;
		this.skillId = skillId;
		this.skillLevel = skillLevel;
		this.evaluatedAt = evaluatedAt;
	}
	
	@Override
	public String toString() {
		return "UserSkills [id=" + id + ", userId=" + userId + ", skillId=" + skillId + ", skillLevel=" + skillLevel
				+ ", evaluatedAt=" + evaluatedAt + "]";
	}

}
