package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ClientCheckDao;
import com.human.util.ICommand;

public class ClientCheck_Delete_Commend implements ICommand {

	@Override
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Delete작업");
	

		String deleteData[] =request.getParameterValues("checkData");
		
		if(deleteData!=null){
			ClientCheckDao dao=new ClientCheckDao();
			for(String name:deleteData){
				dao.delete(name);
			}
		}else {
			System.out.println("delete입력 null");
		}

	}

}
