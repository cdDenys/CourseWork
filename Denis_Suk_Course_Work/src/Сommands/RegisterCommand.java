package Сommands;

import Entity.Site;
import Entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

public class RegisterCommand implements Command{

    @Override
    public String execute(HttpServletRequest request) {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        boolean admin = Boolean.parseBoolean(request.getParameter("admin"));

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        user.setAdmin(admin);

        Site site = Site.getSite();
        Map<String, User> users = site.getUsers();
        boolean add = false;

        if (!users.containsKey(name)) {
            users.put(name, user);
            site.setUsers(users);
            add = true;
        }

        if (add) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setAttribute("site", site);
        } else {
            request.setAttribute("notAdd", "Даний користувач вже існує");
        }

        return (add) ? "controller?action=main" : "register.jsp";
    }
}
