package Сommands;

import Entity.News;
import Entity.Site;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class SearchCategoryCommand implements Command {

    @Override
    public String execute(HttpServletRequest request) {
        String category = request.getParameter("category");

        Site site = Site.getSite();

        ArrayList<News> siteNews = site.getNews();

        ArrayList<News> completeNews = new ArrayList<>();

        for (News news : siteNews) {
            if (news.getCategory().getCategory().equals(category)) {
                completeNews.add(news);
            }
        }

        request.setAttribute("searchNews", completeNews);
        request.setAttribute("category", category);

        return "search_category.jsp";
    }
}
