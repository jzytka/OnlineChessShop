package pl.chesspepper.onlinechessshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.chesspepper.onlinechessshop.category.Category;
import pl.chesspepper.onlinechessshop.category.CategoryService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {
    private ProductService productService;
    private CategoryService categoryService;

    @Autowired
    public ProductController(ProductService productService, CategoryService categoryService) {
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @RequestMapping("/list")
    public String findAllProducts(Model model) {
        List<Product> list = productService.findAllProducts();
        model.addAttribute("list", list);
        return "product-list";
    }

    @RequestMapping("/list/{id}")
    public String findAllProductsByCategoryId(@PathVariable Long id, Model model) {
        List<Product> list = categoryService.findAllProductsByCategoryId(id);
        model.addAttribute("list", list);
        return "product-list";
    }

    @GetMapping("/add")
    public String addProduct(Model model) {
        model.addAttribute("product", new Product());
        return "product-form";
    }

    @PostMapping("/add")
    public String addProduct(@Valid Product product, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "product-form";
        }
        productService.addProduct(product);
        return "redirect:list";
    }

    @GetMapping("/edit/{id}")
    public String editProduct(@PathVariable Long id, Model model) {
        Product product = productService.findProduct(id);
        model.addAttribute("product", product);
        return "product-form";
    }

    @PostMapping("/edit/{id}")
    public String editProduct(@Valid Product product, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "product-form";
        }
        productService.editProduct(product);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.deleteProduct(id);
        return "redirect:../list";
    }

    @ModelAttribute("categories")
    public List<Category> getCategories() {
        return categoryService.findAllCategories();
    }
}
