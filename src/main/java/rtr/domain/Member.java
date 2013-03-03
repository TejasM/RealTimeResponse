package rtr.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Member implements Serializable
{
   /** Default value included to remove warning. Remove or modify at will. **/
   private static final long serialVersionUID = 1L;

   @Id
   private String username;
   
   @Column(columnDefinition="VARCHAR(40) ROLE_AUDIENCE")
   private String role;
   
   public String getId() {
      return username;
   }

   public void setId(String username) {
      this.username = username;
   }

	public String getRole() {
		return role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
}