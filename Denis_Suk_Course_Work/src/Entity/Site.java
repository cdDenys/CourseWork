package Entity;

import java.util.*;

public class Site {

    private static Site site = new Site();

    private Map<String, User> users = new HashMap<>();
    private ArrayList<News> news = new ArrayList<>();
    private Set<String> categories = new HashSet<>();

    private Site() {

    }

    public static Site getSite() {
        if (site ==null) {
            site = new Site();
        }
        return site;
    }

    public void addToCategory(String category) {
        categories.add(category);
    }

    public static void setSite(Site site) {
        Site.site = site;
    }

    public Set<String> getCategories() {
        return categories;
    }

    public void setCategories(Set<String> categories) {
        this.categories = categories;
    }

    public Map<String, User> getUsers() {
        return users;
    }

    public void setUsers(Map<String, User> users) {
        this.users = users;
    }

    public ArrayList<News> getNews() {
        return news;
    }

    public void setNews(ArrayList<News> news) {
        this.news = news;
    }
}
