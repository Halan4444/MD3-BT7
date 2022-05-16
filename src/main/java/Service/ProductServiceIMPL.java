package Service;

import Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceIMPL implements ProductService{
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1,new Product(1,"Cơm Huế",120000, "CƠm ăn từ Huế"));
        products.put(2,new Product(1,"Bún Bò",120000, "Bún bò ngọt"));
        products.put(3,new Product(1,"Bún Chả",120000, "Bún chả Hà Nội"));
        products.put(4,new Product(1,"Phở",120000, "Phở bò Nam Định"));

    }

    @Override
    public List<Product> findAll() {

        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {

        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {

        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {

        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

}
