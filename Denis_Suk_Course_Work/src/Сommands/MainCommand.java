package Сommands;

import Entity.News;
import Entity.Site;
import Entity.User;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class MainCommand implements Command{

    @Override
    public String execute(HttpServletRequest request) {
        Site site = Site.getSite();
        User user = (User) request.getSession().getAttribute("user");

        if (user != null) {
            ArrayList<News> news = site.getNews();
            request.setAttribute("news", news);
        }

        return "main.jsp";
    }
}
