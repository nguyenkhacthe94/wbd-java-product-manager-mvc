package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Product;

public class ProductManager {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "AsusKX1", "Asus", 1000));
        products.put(2, new Product(2, "LenovoG400s", "Lenovo", 600));
    }

    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    public void save(Product product) {
        products.put(product.getId(), product);
    }

    public void update(int id, Product product) {
        products.put(id, product);
    }

    public void remove(int id) {
        products.remove(id);
    }

    public Product findById(int id) {
        return products.get(id);
    }

    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        for(Product product:products.values()) {
            if (product.getName().contains(name)) {
                productList.add(products.get(product.getId()));
            }
        }
        return productList;
    }
}
