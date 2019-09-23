package pl.chesspepper.onlinechessshop.category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.chesspepper.onlinechessshop.product.Product;
import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query("select p from Product p where p.category.id = ?1")
    List<Product> findAllProductsByCategoryId(Long id);
}
