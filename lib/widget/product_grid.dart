import 'package:flutter/material.dart';
import '../model/product.dart';
import 'package:provider/provider.dart';
import './product_item.dart';
import '../providers/product.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final Product = productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: Product.length,
      itemBuilder: (ctx, i) => ProductItem(Product[i].id,
          Product[i].title, Product[i].imageUrl),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
