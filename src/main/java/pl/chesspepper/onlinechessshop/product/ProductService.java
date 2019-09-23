package pl.chesspepper.onlinechessshop.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.chesspepper.onlinechessshop.category.Category;
import pl.chesspepper.onlinechessshop.category.CategoryRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ProductService {
    private ProductRepository productRepository;

    @Autowired
    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void addProduct(Product product) {
        productRepository.save(product);
    }

    public Product findProduct(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public void editProduct(Product product) {
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        Product product = findProduct(id);
        if (product != null) {
            productRepository.delete(product);
        }
    }

    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }
}
