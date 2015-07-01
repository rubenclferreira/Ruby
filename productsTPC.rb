
class Product

  def initialize(product)
    @name = product[:name]
    @price = product[:price]
    @brand = product[:brand]
  end

  def name
    @name
  end

  def price
    @price
  end

  def brand
    @brand
  end

  def to_s
    "#{@name}, #{@brand}, #{@price}"
    
  end
end  
 

class ProductCollection

def initialize(products)
  @products = products


end

def count
  @products.count
  
end

def get_names
  @products.map do |product|
    product.name
    
  end
  
end

def filter_by_brand(brand)
  @products.select do |product|
    product.brand == brand

  end
  
end

def group_by_brand
   @products.group_by do |product| 
      product.brand
    end   
  
end

  def count_by_brand(brand)
     @products.count do |product|
      product.brand == brand
    end
    
  end

  def cheapest
   @products.min_by do |product|
    product.price
  end
end

end

products = [
  Product.new({ name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" }),
  Product.new({ name: "LG G Flex", price: 689.90, brand: "LG" }),
  Product.new({ name: "Apple iPhone 6 Plus", price: 779.90, brand: "Apple" }),
  Product.new({ name: "Samsung Galaxy Alpha", price: 589.90, brand: "Samsung" }),
  Product.new({ name: "Nokia Lumia 930", price: 489.90, brand: "Nokia" }),
  Product.new({ name: "Sony Xperia Z3 Compact", price: 389.90, brand: "Sony" }),
  Product.new({ name: "Apple iPhone 6", price: 779.90, brand: "Apple" }),
  Product.new({ name: "Huawei Ascend G7", price: 259.90, brand: "Huawei" }),
  Product.new({ name: "Sony Xperia T2 Ultra", price: 359.90, brand: "Sony" }),
  Product.new({ name: "LG G4", price: 589.90, brand: "LG" }),
  Product.new({ name: "Samsung Galaxy Note 4", price: 689.90, brand: "Samsung" }),
  Product.new({ name: "HTC One M9", price: 674.90, brand: "HTC" }),
  Product.new({ name: "Apple iPhone 5S", price: 589.90, brand: "Apple" })
]


collection = ProductCollection.new(products)
# puts "Product count: #{ collection.count }"
# puts "Product names: #{ collection.get_names }"
# puts "Only 'LG' brand: #{ collection.filter_by_brand('LG') }"
# puts "Count 'Samsung' brand: #{ collection.count_by_brand('Samsung') }"
# puts " Group by brand: #{ collection.group_by_brand }"
# puts "Most cheap: #{ collection.cheapest }"
puts "Most expensive: #{ collection.most_expensive }"