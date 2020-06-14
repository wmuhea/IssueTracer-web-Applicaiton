package Data;

import models.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDao {

    private static Map<Integer, User> teamDb;
    private static UserDao userDbInstance = null;

    {
      teamDb = new HashMap<Integer, User>();
      teamDb.put(1, new User("wonde", "enenegn"));
      teamDb.put(2, new User("tje", "esunew"));
      teamDb.put(3, new User("ruby", "esuanat"));
      teamDb.put(4, new User("rina", "esuanat"));
    }

    private UserDao() {
    }
    public static UserDao getInstance() {
        if(userDbInstance == null) {
            userDbInstance = new UserDao();
        }
        return userDbInstance;
    }
    public User findByUsername(String userName) {
        User foundResult = null;
        if(teamDb.containsKey(userName)) {
            foundResult = teamDb.get(userName);
        }
        return foundResult;
    }


}
