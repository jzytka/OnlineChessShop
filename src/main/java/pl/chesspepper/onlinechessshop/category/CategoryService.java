package pl.chesspepper.onlinechessshop.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.chesspepper.onlinechessshop.product.Product;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class CategoryService {
    private CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public void addCategory(Category category) {
        categoryRepository.save(category);
    }

    public Category findCategory(Long id) {
         return categoryRepository.findById(id).orElse(null);
    }

    public void editCategory(Category category) {
        categoryRepository.save(category);
    }

    public void deleteCategory(Long id) {
        Category category = findCategory(id);
        if (category != null) {
            categoryRepository.delete(category);
        }
    }

    public List<Product> findAllProductsByCategoryId(Long id) {
        return categoryRepository.findAllProductsByCategoryId(id);
    }

    public List<Category> findAllCategories() {
        return categoryRepository.findAll();
    }
}
