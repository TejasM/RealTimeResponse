package rtr.repo;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import rtr.domain.Point;
import rtr.domain.Receptiveness;

@Service
public class ReceptivenessService implements ReceptivenessInterface {
	
	private Map<String, Map<String, List<Point>>> map = new HashMap<String, Map<String,List<Point>>>();
	
	private final static int interval = 5;
	/* (non-Javadoc)
	 * @see rtr.repo.ReceptivenessInterface#getReceptiveness(java.lang.String)
	 */
	@Override
	public Receptiveness getReceptiveness(String courseId){
		Map<String, List<Point>> currentSession = getMap().get(courseId);		
		Date date = new Date();
		Receptiveness totalReceptiveness = new Receptiveness();
		if(currentSession != null){
			for (List<Point> points: currentSession.values()){
				totalReceptiveness = summarizePoints(totalReceptiveness, points, date);
			}
		}
		//totalReceptiveness.toPercentage();
		return totalReceptiveness;
	}
	
	private Receptiveness summarizePoints(Receptiveness toReceptiveness, List<Point> points, Date date){
		double sum1 = 0;
		double sum2 = 0;
		for (Point point: points){
			sum1 += point.getValue1();
			sum2 += point.getValue2();
		}
		return toReceptiveness.combine(new Receptiveness(sum1, sum2));
	}
	
	/* (non-Javadoc)
	 * @see rtr.repo.ReceptivenessInterface#updateReceptiveness(java.lang.String, java.lang.String, int, int)
	 */
	@Override
	public void updateReceptiveness(String courseId, String studentId, int change1, int change2){ 
		Map<String, List<Point>> innerMap = getMap().get(courseId);
		if (innerMap == null) {			
			innerMap = new HashMap<String, List<Point>>();
			map.put(courseId, innerMap);
		}
		if(!innerMap.containsKey(studentId)){
			innerMap.put(studentId, new ArrayList<Point>());
		}
		innerMap.get(studentId).add(new Point(new Date(), change1, change2));
	}

	public Map<String, Map<String, List<Point>>> getMap() {
		return map;
	}

	public void setMap(Map<String, Map<String, List<Point>>> map) {
		this.map = map;
	}
}
