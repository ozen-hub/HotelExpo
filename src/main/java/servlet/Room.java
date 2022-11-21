
package servlet;

import com.google.gson.Gson;
import dao.CrudUtil;
import db.DBConnection;
import dto.Hotel;
import dto.RequestImageDto;
import dto.UserDto;
import dto.request.RequestLoginDto;
import dto.request.RequestRoomDto;
import dto.request.RequestUserDto;
import dto.response.DataResponse;
import dto.response.StandardResponse;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import util.IdGenerator;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/room")
public class Room extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type").equals("list")){
            String jsoObj = "";
            try{
                String location = "%"+(request.getParameter("location"))+"%";
                ResultSet set = CrudUtil.execute("SELECT * FROM Hotel WHERE destination LIKE ?",location);



                ArrayList<Hotel> hotelsList= new ArrayList<>();
                while (set.next()){
                    Hotel h= new Hotel(
                            set.getString(1),
                            set.getString(2),
                            set.getInt(3),
                            null,
                            set.getBoolean(5),
                            null,
                            set.getString(7),
                            set.getString(8)
                    );
                    hotelsList.add(h);
                }
                DataResponse resp = new DataResponse(
                        hotelsList.size(),
                        hotelsList
                );

                jsoObj = new Gson().toJson(
                        new StandardResponse(200, "data!", resp)
                );
                response.getWriter().write(jsoObj);

            }catch (Exception e){
                jsoObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                response.getWriter().write(jsoObj);
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type").equals("room")) {
            RequestRoomDto d = new Gson().fromJson(request.getReader(), RequestRoomDto.class);
            response.setContentType("application/json");
            String jsoObj = "";
            try {

                if (CrudUtil.execute("INSERT INTO Room VALUES(?,?,?,?,?,?)",
                        IdGenerator.getId(16),
                        d.getType(), d.isDeals(), d.getDescription(), d.getHotel(), d.getCost())) {

                    jsoObj = new Gson().toJson(
                            new StandardResponse(201, "Saved!", null)
                    );
                    response.getWriter().write(jsoObj);
                } else {

                    jsoObj = new Gson().toJson(
                            new StandardResponse(500, "Try Again!", null)
                    );
                    response.getWriter().write(jsoObj);
                }

            } catch (Exception e) {
                jsoObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                response.getWriter().write(jsoObj);
            }
        } else {
            Part filePart = request.getPart("image");
            String submittedFileName = filePart.getSubmittedFileName();
            System.out.println(submittedFileName);
           /* RequestImageDto d = new Gson().fromJson(request.getReader(), RequestImageDto.class);
            response.setContentType("application/json");
            FileInputStream fis = new FileInputStream(d.getImage());
            System.out.println(d);*/
            //=====>
            //
        }
    }
}

