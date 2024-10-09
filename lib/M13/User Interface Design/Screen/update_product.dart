import 'package:flutter/material.dart';

class UpdateProduct extends StatefulWidget {
  const UpdateProduct({super.key}); // Fix the constructor name here

  @override
  State<UpdateProduct> createState() => _UpdateProductState(); // Correct the state class name
}

class _UpdateProductState extends State<UpdateProduct> {
  final TextEditingController _productsNameTEController = TextEditingController();
  final TextEditingController _unitePriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _productsCodeTEController = TextEditingController();
  final TextEditingController _productsQuantityTEController = TextEditingController();
  final TextEditingController _productsImageTEController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // Dispose controllers to avoid memory leaks
  @override
  void dispose() {
    _productsNameTEController.dispose();
    _unitePriceTEController.dispose();
    _totalPriceTEController.dispose();
    _productsCodeTEController.dispose();
    _productsQuantityTEController.dispose();
    _productsImageTEController.dispose();
    super.dispose();
  }

  // Function to handle the button press
  void _onTapUpdateProductButton() {
    if (_formkey.currentState!.validate()) {
      // Add your logic to update the product
      print("Product Updated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Update Product")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _productsNameTEController,
                decoration: InputDecoration(
                  labelText: "Products Name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _productsImageTEController,
                decoration: InputDecoration(
                  labelText: "Products Image (URL or Path)",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _productsCodeTEController,
                decoration: InputDecoration(
                  labelText: "Products Code",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _productsQuantityTEController,
                decoration: InputDecoration(
                  labelText: "Quantity",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter quantity';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _unitePriceTEController,
                decoration: InputDecoration(
                  labelText: "Unit Price",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _totalPriceTEController,
                decoration: InputDecoration(
                  labelText: "Total Price",
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _onTapUpdateProductButton, // Correct reference to the button tap function
                child: Text("Update Product"),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(double.maxFinite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
