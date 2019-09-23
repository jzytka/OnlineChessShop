package pl.chesspepper.onlinechessshop.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.chesspepper.onlinechessshop.product.Product;
import pl.chesspepper.onlinechessshop.product.ProductService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {
    private CategoryService categoryService;
    private ProductService productService;

    @Autowired
    public CategoryController(CategoryService categoryService, ProductService productService) {
        this.categoryService = categoryService;
        this.productService = productService;
    }

    @RequestMapping("/list")
    public String findAllCategories(Model model) {
        List<Category> list = categoryService.findAllCategories();
        model.addAttribute("list", list);
        return "category-list";
    }

    @GetMapping("/add")
    public String addCategory(Model model) {
        model.addAttribute("category", new Category());
        return "category-form";
    }

    @PostMapping("/add")
    public String addCategory(@Valid Category category, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "category-form";
        }
        categoryService.addCategory(category);
        return "redirect:list";
    }

    @GetMapping("/edit/{id}")
    public String editCategory(@PathVariable Long id, Model model) {
        Category category = categoryService.findCategory(id);
        model.addAttribute("category", category);
        return "category-form";
    }

    @PostMapping("/edit/{id}")
    public String editCategory(@Valid Category category, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "category-form";
        }
        categoryService.editCategory(category);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteCategory(@PathVariable Long id) {
        List<Product> list = categoryService.findAllProductsByCategoryId(id);
        list.forEach(product -> productService.deleteProduct(product.getId()));
        categoryService.deleteCategory(id);
        return "redirect:../list";
    }
}
