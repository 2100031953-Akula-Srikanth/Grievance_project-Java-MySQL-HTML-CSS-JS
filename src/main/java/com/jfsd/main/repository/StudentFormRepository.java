package com.jfsd.main.repository;

import org.hibernate.mapping.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.main.model.StudentForm;
import java.util.*;


	@Repository
	public interface StudentFormRepository extends JpaRepository<StudentForm, Long>{
		 @Query("SELECT s FROM StudentForm s " +
		           "ORDER BY " +
		           "CASE " +
		           "  WHEN TRIM(s.level) = 'urgent' THEN 1 " +
		           "  WHEN TRIM(s.level) = 'high' THEN 2 " +
		           "  WHEN TRIM(s.level) = 'medium' THEN 3 " +
		           "  WHEN TRIM(s.level) = 'low' THEN 4 " +
		           "  ELSE 5 " + // Optional: handle other cases
		           "END")
		    ModelAndView findAllSortedByLevel();


}
