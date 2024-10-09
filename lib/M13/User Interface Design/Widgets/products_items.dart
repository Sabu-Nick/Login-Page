import 'package:flutter/material.dart';

import '../Screen/update_product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ), tileColor: Colors.white,
        title: const Text("Products Nike",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Code: 2456"),
            const Text("Quantity: 2"),
            const Text("Price: \$120"),
            const Text("Total Price: \$240",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            const Divider(),
            ButtonBar(
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateProduct()),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit"),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                  label: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

