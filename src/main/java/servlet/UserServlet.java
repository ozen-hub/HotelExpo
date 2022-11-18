package servlet;

import bo.BoFactory;
import bo.custom.UserBo;
import com.google.gson.Gson;
import dto.UserDto;
import dto.request.RequestUserDto;
import dto.response.StandardResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.stream.Collectors;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private UserBo userBo = BoFactory.getInstance().getBo(BoFactory.BoType.USER);

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestUserDto d = new Gson().fromJson(req.getReader(), RequestUserDto.class);
        UserDto userDto = new UserDto(
                d.getEmail(),d.getfName(),d.getlName(),d.getContact(),d.getPassword(),true
        );

        // api/v1/customer ==> (xml,json)
        resp.setContentType("application/json");
        String jsoObj="";
        try {
            if (userBo.createUser(userDto)){
                jsoObj=new Gson().toJson(
                        new StandardResponse(201,"User saved!",null)
                );
                resp.getWriter().write(jsoObj);
            }else{
                jsoObj=new Gson().toJson(
                        new StandardResponse(500,"Internal Server Error!",null)
                );
                resp.getWriter().write(jsoObj);
            }
        }catch (Exception e){
            jsoObj=new Gson().toJson(
                    new StandardResponse(500,e.getMessage(),e)
            );
            resp.getWriter().write(jsoObj);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do GET</h1>");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do PUT</h1>");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do DELETE</h1>");
    }
}
