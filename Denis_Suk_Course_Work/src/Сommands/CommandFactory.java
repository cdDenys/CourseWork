package Сommands;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class CommandFactory {

    private static CommandFactory factory = new CommandFactory();

    private final Map<String, Command> commands = new HashMap<>();

    private CommandFactory() {

    }

    public static CommandFactory commandFactory() {
        if (factory==null) {
            factory = new CommandFactory();
        }
        return factory;
    }

    {
        commands.put("register", new RegisterCommand());
        commands.put("login", new LoginCommand());
        commands.put("logout", new LogoutCommand());
        commands.put("main", new MainCommand());
        commands.put("create_new_news", new CreateNewNewsCommand());
        commands.put("go_to_news", new GoToNewsCommand());
        commands.put("search", new SearchCommand());
        commands.put("searchCategory", new SearchCategoryCommand());
    }

    public Command getCommand(HttpServletRequest request) {
        String action = request.getParameter("action");
        return commands.get(action);
    }
}
