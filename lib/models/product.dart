class Product {
  final String id;
  final String name;
  final double price;
  final int stock;
  // final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock
    // required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json, String id) {
    return Product(
      id: id,
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      stock: json['stock']
      // imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'stock': stock
      // 'imageUrl': imageUrl,
    };
  }
}
