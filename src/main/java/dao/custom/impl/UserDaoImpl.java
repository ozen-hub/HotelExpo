package dao.custom.impl;

import dao.CrudUtil;
import dao.custom.UserDao;
import dto.response.LoginResponseDto;
import entity.User;
import io.jsonwebtoken.Jwts;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.List;
import java.util.UUID;

public class UserDaoImpl implements UserDao {
    @Override
    public boolean save(User user) throws SQLException, ClassNotFoundException {
        return CrudUtil.execute(
                "INSERT INTO User VALUES(?,?,?,?,?,?)",
                user.getEmail(),user.getfName(),user.getlName(),user.getContact(),
                user.getPassword(),user.isActiveState()
        );
    }

    @Override
    public boolean update(User user) {
        return false;
    }

    @Override
    public boolean delete(String s) {
        return false;
    }

    @Override
    public User get(String s) {
        return null;
    }

    @Override
    public List<User> getAll() {
        return null;
    }

    @Override
    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException {
        ResultSet set =  CrudUtil.execute(
                "SELECT * FROM User WHERE email=? AND password=?",
                email,password
        );
        if(set.next()){
            // token===================
            // encrypt ===> algorithm
            // token ==> (public(client) private(server))
            // token===================
            String token = Jwts.builder()
                    .claim("name",set.getString(2)+" "+set.getString(3))
                    .claim("email",set.getString(1))
                    .setId(UUID.randomUUID().toString())
                    .setIssuedAt(Date.from(Instant.now()))
                    .setExpiration(Date.from(Instant.now().plus(24, ChronoUnit.HOURS)))
                    .compact();


            return new LoginResponseDto(
                    set.getString(2)+" "+set.getString(3),
                    set.getString(1),token
            );
        }else{
            throw new ClassNotFoundException();
        }
    }
}
