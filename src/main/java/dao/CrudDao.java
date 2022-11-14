package dao;

import java.sql.SQLException;
import java.util.List;

public interface CrudDao<T,ID> extends SuperDao{
    public boolean save(T t) throws SQLException, ClassNotFoundException;
    public boolean update(T t);
    public boolean delete(ID id);
    public T get(ID id);
    public List<T> getAll();
}
