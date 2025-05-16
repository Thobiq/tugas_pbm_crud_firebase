import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product.dart';

class ProductService {
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product) {
    return _products.add(product.toJson());
  }

  Stream<List<Product>> getProducts() {
    return _products.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Product.fromJson(doc.data() as Map<String, dynamic>, doc.id);
      }).toList();
    });
  }

  Future<void> updateProduct(Product product) {
    return _products.doc(product.id).update(product.toJson());
  }

  Future<void> deleteProduct(String id) {
    return _products.doc(id).delete();
  }
}