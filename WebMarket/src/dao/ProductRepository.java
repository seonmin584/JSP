package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {
   private ArrayList<Product> listofProducts = new ArrayList<Product>();
   private static ProductRepository instance = new ProductRepository();

   public static ProductRepository getInstance() {
      return instance;
   }

   public ProductRepository() {
      Product phone = new Product("P1234", "iPhone 6s", 800000);
      phone.setDescription("4.7-inch, 1334x750 Renina HD display,8-megapixel iSight Camera");
      phone.setCategory("Smart Phone");
      phone.setManufacturer("Apple");
      phone.setUnitsInStock(1000);
      phone.setCondition("new");
      phone.setFilename("P1234.jpg");

      Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
      notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
      notebook.setCategory("Notebook");
      notebook.setManufacturer("LG");
      notebook.setUnitsInStock(1000);
      notebook.setCondition("Refubished");
      notebook.setFilename("P1235.jpg");

      Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
      tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
      tablet.setCategory("Tablet");
      tablet.setManufacturer("Samsung");
      tablet.setUnitsInStock(1000);
      tablet.setCondition("Old");
      tablet.setFilename("P1236.jpg");

      listofProducts.add(phone);
      listofProducts.add(notebook);
      listofProducts.add(tablet);
   }

   public Product getProductById(String productId) {
      Product productById = null;

      for (int i = 0; i < listofProducts.size(); i++) {
         Product product = listofProducts.get(i);
         if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
            productById = product;
            break;
         }
      }
      return productById;
   }

   public ArrayList<Product> getAllProducts() {
      return listofProducts;
   }

   public void addProduct(Product product) {
      listofProducts.add(product);
   }
}