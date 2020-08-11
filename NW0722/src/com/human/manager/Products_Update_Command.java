package com.human.manager;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.human.dao.ProductsDao;
import com.human.dto.ProductsDto;

import com.human.util.ICommand;


public class Products_Update_Command implements ICommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("Update작업");
		
		String updateData[]=request.getParameterValues("updateData");
		String updateProductName[]=request.getParameterValues("updateProductName");
		String updateSupplierId[] = request.getParameterValues("updateSupplierId");
		String updateCategoryId[]=request.getParameterValues("updateCategoryId");
		String updateQuantityPerunit[]=request.getParameterValues("updateQuantityPerunit");
		String updateUnitPrice[]=request.getParameterValues("updateUnitPrice");
		String updateUnitsInStock[]=request.getParameterValues("updateUnitsInStock");
		String updateUnitsOnOrder[]=request.getParameterValues("updateUnitsOnOrder");
		String updateReorderLevel[]=request.getParameterValues("updateReorderLevel");
		String updateDiscontinued[]=request.getParameterValues("updateDiscontinued");
		
		//0	2
		if(updateData!=null){
			
				//new Human()
				ProductsDao dao = new ProductsDao();
//				public ProductsDto(int productId, String productName, int supplierId, int categoryId, String quantityPerUnit,
//						int unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, int discontinued)
			
				ProductsDto product = new ProductsDto(Integer.parseInt(updateData[0]),updateProductName[0],Integer.parseInt(updateSupplierId[0]),Integer.parseInt(updateCategoryId[0]),
						updateQuantityPerunit[0],Double.parseDouble(updateUnitPrice[0]),Integer.parseInt(updateUnitsInStock[0]),
						Integer.parseInt(updateUnitsOnOrder[0]),Integer.parseInt(updateReorderLevel[0]),
						Integer.parseInt(updateDiscontinued[0]));
				dao.updateAll(product);
			}	
		}

	}
