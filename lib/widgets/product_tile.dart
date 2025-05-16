import 'package:flutter/material.dart';
import 'package:product_firebase/pages/add_product_page.dart';
import 'package:product_firebase/pages/update_product_page.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('Rp ${product.price} | stok : ${product.stock}'),
      trailing: Wrap(
      spacing: 8, 
      children: [
        IconButton(
          icon: const Icon(Icons.edit, color: Colors.blue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => UpdateProductPage(product: product),
              ),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            ProductService().deleteProduct(product.id);
          },
        ),
      ],
    ),
    );
  }
}