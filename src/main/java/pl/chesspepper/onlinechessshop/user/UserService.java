package pl.chesspepper.onlinechessshop.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.chesspepper.onlinechessshop.product.Product;
import pl.chesspepper.onlinechessshop.product.ProductRepository;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {
    private UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void addUser(User user) {
        userRepository.save(user);
    }

    public User findUser(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void editUser(User user) {
        userRepository.save(user);
    }

    public void deleteUser(Long id) {
        User user = findUser(id);
        if (user != null) {
            userRepository.delete(user);
        }
    }

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }
}
