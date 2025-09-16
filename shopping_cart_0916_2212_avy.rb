# 代码生成时间: 2025-09-16 22:12:24
# Ruby program to implement a shopping cart using the CUBA framework

# Define a Product class to represent items that can be added to a cart
class Product
  attr_accessor :id, :name, :price

  # Initialize a new Product with id, name, and price
  def initialize(id, name, price)
# FIXME: 处理边界情况
    @id = id
    @name = name
    @price = price
  end
end
# 扩展功能模块


# Define a ShoppingCart class to manage the cart operations
class ShoppingCart
  attr_accessor :items
# 添加错误处理

  # Initialize a new ShoppingCart with an empty items array
  def initialize
    @items = []
  end
# TODO: 优化性能

  # Add a product to the cart
  def add_product(product)
    unless product.is_a?(Product)
# 添加错误处理
      raise ArgumentError, 'Product must be an instance of Product'
    end
# NOTE: 重要实现细节
    @items << product
  end

  # Remove a product from the cart by id
  def remove_product(product_id)
    @items.reject! { |product| product.id == product_id }
  end

  # Calculate the total price of all products in the cart
  def total_price
    @items.map(&:price).sum
  end
end

# Example usage of the ShoppingCart class
if __FILE__ == $0
  cart = ShoppingCart.new

  # Create some products
  product1 = Product.new(1, 'Apple', 0.50)
  product2 = Product.new(2, 'Banana', 0.30)
  product3 = Product.new(3, 'Orange', 0.80)
# NOTE: 重要实现细节

  # Add products to the cart
  cart.add_product(product1)
  cart.add_product(product2)
# TODO: 优化性能
  cart.add_product(product3)

  # Display the total price of the cart
  puts "Total price: \#{cart.total_price}"

  # Remove a product from the cart
  cart.remove_product(2)
  puts "Total price after removing Banana: \#{cart.total_price}"
end
