package Сommands;

import Entity.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class CreateNewNewsCommand implements Command {

    @Override
    public String execute(HttpServletRequest request) {
        Site site = Site.getSite();
        User user = (User) request.getSession().getAttribute("user");

        String header = request.getParameter("header");
        String question = request.getParameter("news");
        String keywords = request.getParameter("keywords");
        String category = request.getParameter("category");

        String[] keywordsArr = keywords.split(", ");
        Set<Keyword> keywordSet = new HashSet<>();

        News mainNews = new News();

        mainNews.setHeader(header);
        mainNews.setNews(question);

        Category categoryAdd = new Category();
        categoryAdd.setCategory(category);

        mainNews.setCategory(categoryAdd);

        site.addToCategory(categoryAdd.getCategory());

        for (String s : keywordsArr) {
            Keyword keyword = new Keyword();
            keyword.setKeyword(s);
            keywordSet.add(keyword);
        }

        mainNews.setKeywords(keywordSet);
        mainNews.setCreator(user);
        mainNews.setDate(new Date());

        ArrayList<News> siteNews =  site.getNews();

        siteNews.add(mainNews);

        site.setNews(siteNews);

        return "controller?action=main";
    }
}
