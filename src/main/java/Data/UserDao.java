package Data;

import models.User;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDao {

    private Map<Integer, User> teamDb;

    {
      teamDb = new HashMap<Integer, User>();
      teamDb.put(1, new User("wonde", "enenegn"));
      teamDb.put(2, new User("tje", "esunew"));
      teamDb.put(3, new User("ruby", "esuanat"));
      teamDb.put(4, new User("rina", "esuanat"));
    }

    public List<User> getUserDB () {
        return new ArrayList<User>(teamDb.values());
    }
}
