package model;

/**
 *
 * @author TVD
 */
public class Cart {

    private Product product;
    private int quantity;
    private long totalPrice;

    public long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice() {
        this.totalPrice = (long)(this.product.getPrice()* this.quantity);
    }
    

    public Cart() {
    }

    public Cart(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.totalPrice = (long)(product.getPrice()* quantity);
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
         this.totalPrice = (long)(this.product.getPrice()* this.quantity);
    }

}
