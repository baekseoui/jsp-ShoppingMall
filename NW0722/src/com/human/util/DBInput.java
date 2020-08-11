package com.human.util;

import java.text.SimpleDateFormat;

public class DBInput {
	public static String dateToString(java.util.Date date){
		SimpleDateFormat transFormat=
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 
	
		return transFormat.format(date);
		
	}
}
