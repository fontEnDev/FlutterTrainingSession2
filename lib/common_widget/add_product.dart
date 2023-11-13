import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity = _quantity + 1;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity =_quantity - 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.grey[300],
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      alignment: Alignment.center,
      height: 30,
      child: Row(
        children: [
          IconButton(
            onPressed: _decrementQuantity,
            icon: const Icon(
              Icons.remove,
              size: 16,
            ),
          ),
          Text(
            '$_quantity',
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: _incrementQuantity,
            icon: const Icon(Icons.add, size: 16),
          ),
        ],
      ),
    );
  }
}
