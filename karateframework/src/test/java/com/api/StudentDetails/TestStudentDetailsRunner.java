package com.api.StudentDetails;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestStudentDetailsRunner {
	
	@Test
	public Karate runTest() {
		return Karate.run("StudentDetails_GET").relativeTo(getClass());
	}
	
	@Test
	public Karate runwithclasspathTest() {
		return Karate.run("classpath:com/api/StudentDetails/StudentDetails_POST.feature");
	}
	

}
