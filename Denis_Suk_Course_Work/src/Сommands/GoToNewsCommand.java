package Сommands;

import Entity.News;
import Entity.Site;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.stream.Collectors;

public class GoToNewsCommand implements Command{

    @Override
    public String execute(HttpServletRequest request) {
        Site site = Site.getSite();

        ArrayList<News> siteNews = site.getNews();

        ArrayList<String> headers = siteNews.stream()
                .map(News::getHeader)
                .collect(Collectors.toCollection(ArrayList::new));

        int index = headers.indexOf(request.getParameter("news"));

        News news = siteNews.get(index);

        request.setAttribute("news", news);

        return "go_to_news.jsp";
    }
}
