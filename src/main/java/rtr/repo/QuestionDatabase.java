package rtr.repo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class QuestionDatabase {
	private Map<String, List<String>> questions = new HashMap<String, List<String>>();

	public Map<String, List<String>> getQuestions() {
		return questions;
	}

	public void setQuestions(Map<String, List<String>> questions) {
		this.questions = questions;
	}
	
	public void insertQuestion(String sessionId, String question){
		if(!this.questions.containsKey(sessionId)){
			this.questions.put(sessionId, new ArrayList<String>());
		}
		this.questions.get(sessionId).add(question);
	}
	
	public List<String> getQuestions(String sessionId){
		return this.questions.get(sessionId);
	}
}
