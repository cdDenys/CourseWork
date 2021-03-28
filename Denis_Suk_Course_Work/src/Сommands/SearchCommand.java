package Сommands;

import Entity.News;
import Entity.Site;
import Entity.Keyword;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

public class SearchCommand implements Command {

    @Override
    public String execute(HttpServletRequest request) {
        String search = request.getParameter("search");
        String[] searchKeywords = search.split(", ");

        Set<String> searchKeywordsSet = new HashSet<>(Arrays.asList(searchKeywords));

        Site site = Site.getSite();
        ArrayList<News> siteNews = site.getNews();

        ArrayList<News> completeNews = new ArrayList<>();

        for (News news: siteNews) {
            Set<Keyword> keywords = news.getKeywords();
            HashSet<String> completeKeywords = keywords.stream()
                    .map(Keyword::getKeyword)
                    .collect(Collectors.toCollection(HashSet::new));
            if (completeKeywords.containsAll(searchKeywordsSet)) {
                completeNews.add(news);
            }
        }

        request.setAttribute("searchNewsKey", completeNews);

        return "search.jsp";
    }
}
