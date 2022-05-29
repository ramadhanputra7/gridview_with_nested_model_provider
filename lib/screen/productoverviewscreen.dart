import 'package:flutter/material.dart';
import '../widgets/productgrid.dart';
import 'package:gridview/providers/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: ProductGrid(),
    );
  }
}
