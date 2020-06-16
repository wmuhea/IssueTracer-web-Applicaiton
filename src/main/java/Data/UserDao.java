package Data;

import models.User;

import java.util.HashMap;
import java.util.Map;

public class UserDao {

    private static Map<String, User> teamDb;
    private static UserDao userDbInstance = null;

    {
        teamDb = new HashMap<String, User>();
//      never delete
        teamDb.put("wonde", new User("wonde", "enenegn"));
        teamDb.put("tije", new User("tije", "esunew"));
        teamDb.put("ruby", new User("ruby", "esuanat"));
        teamDb.put("rina", new User("rina", "esuanat"));
        teamDb.put("admin", new User("admin","admin"));
    }

    private UserDao() {
    }

    public static UserDao getInstance() {
        if (userDbInstance == null) {
            userDbInstance = new UserDao();
        }
        return userDbInstance;
    }

    public User findByUsername(String userName) {
        return teamDb.get(userName);
    }
}
