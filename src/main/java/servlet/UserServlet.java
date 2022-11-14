package servlet;

import dto.UserDto;
import dto.request.RequestUserDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String fName = req.getParameter("first_name");
        String lName = req.getParameter("last_name");
        String contact = req.getParameter("contact");
        String password = req.getParameter("password");
        RequestUserDto requestUserDto = new RequestUserDto(
                email,fName,lName,contact,password
        );

        UserDto userDto = new UserDto(
                requestUserDto.getEmail(), requestUserDto.getfName(),
                requestUserDto.getlName(), requestUserDto.getContact(),
                requestUserDto.getPassword(),true
        );

        resp.getWriter().println("<h1>"+userDto+"</h1>");
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
