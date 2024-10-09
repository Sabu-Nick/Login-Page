import 'package:flutter/material.dart';
import '../Widgets/products_items.dart';
import 'add_new_product_screen.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  State<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Products List"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const ProductItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 4);
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (

            ){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddNewProductScreen()),
              );
        },
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
      ),
    );
  }
}


