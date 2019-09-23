package pl.chesspepper.onlinechessshop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.chesspepper.onlinechessshop.category.Category;
import pl.chesspepper.onlinechessshop.category.CategoryService;
import pl.chesspepper.onlinechessshop.user.User;
import pl.chesspepper.onlinechessshop.user.UserService;
import java.util.List;

@Controller
public class HomeController {
    private UserService userService;
    private CategoryService categoryService;

    @Autowired
    public HomeController(UserService userService, CategoryService categoryService) {
        this.userService = userService;
        this.categoryService = categoryService;
    }

    @RequestMapping
    public String home() {
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestAttribute(name = "email") String email,
                        @RequestAttribute(name = "password") String password) {
        //todo autoryzacja
        return "login";
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/register")
    public String register(@RequestAttribute(name = "firstName") String firstName,
                           @RequestAttribute(name = "lastName") String lastName,
                           @RequestAttribute(name = "email") String email,
                           @RequestAttribute(name = "password") String password) {
        userService.addUser(new User(firstName, lastName, email, password));
        return "register";
    }

    @ModelAttribute("categories")
    public List<Category> categories() {
        return categoryService.findAllCategories();
    }
}
