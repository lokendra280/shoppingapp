import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';

import './screen/product_detail_screen.dart';
import 'screen/products_overview_screen.dart';
import 'providers/products.dart';
import './screen/cart_screen.dart';
import './providers/orders.dart';
import './screen/orders_screen.dart';
import './screen/user_products_screen.dart';
import './screen/edit_products_screen.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider.value(
      value: Products(),
      ),
      ChangeNotifierProvider.value(
        value: Cart(),
        ),
        ChangeNotifierProvider.value(
            value: Cart(),
          ),
          ChangeNotifierProvider.value(
            value: Orders(),
            ),
    ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato',
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
              EditProductScreen.routeName: (ctx) => EditProductScreen(),
          }
      
          ),
    
    
    );
  }
}
