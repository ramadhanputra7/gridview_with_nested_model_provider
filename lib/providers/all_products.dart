import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _allproducts = List.generate(
    25,
    (laptop) {
      return Product(
        id: "id_${laptop + 1}",
        title: "Product ${laptop + 1}",
        description: 'Ini adalah deskripsi produk ${laptop + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageAsset: 'https://picsum.photos/id/$laptop/400/600',
      );
    },
  );

  List<Product> get allproducts {
    return [..._allproducts];
  }

  Product findById(productId) {
    return _allproducts.firstWhere((proId) => proId.id == productId);
  }
}
