package com.models;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class ItemHandler {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse
			 response) throws ServletException, IOException
			{
			 Items item = new Items();
			response.getWriter().append(item.getItems());
			}

			//SAVE
			protected void doPost(HttpServletRequest request, HttpServletResponse
			 response) throws ServletException, IOException
			{
			Items item = new Items();
			response.getWriter().append(
			 item.saveItem(request.getParameter("txtItemName"),
			 request.getParameter("txtItemDesc")));
			}
}
