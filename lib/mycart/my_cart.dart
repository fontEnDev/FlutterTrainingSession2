import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<StatefulWidget> createState() => _MyCart();
}

class _MyCart extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    int _quantity = 1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[400]),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag,
                        size: 24,
                      )),
                ),
              ),
            )
          ],
        ),
        // body: Column(
        //   children: [
        //     const Text(
        //       'My Cart',
        //       style: TextStyle(
        //           fontSize: 24,
        //           color: Colors.black,
        //           fontWeight: FontWeight.bold),
        //     ),
        //     GridView.builder(
        //         itemCount: 3,
        //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 1,
        //         ),
        //         itemBuilder: (context, index) {
        //           return Row(
        //             children: [
        //               Expanded(
        //                   flex: 1,
        //                   child: Image.asset('assets/images/logo1.jpg')),
        //               const Expanded(
        //                   flex: 2,
        //                   child: Column(
        //                     children: [
        //                       Text(
        //                         'Name San Pham',
        //                         style: TextStyle(
        //                             fontSize: 20,
        //                             fontWeight: FontWeight.bold,
        //                             color: Colors.black),
        //                       ),
        //                       Text(
        //                         'Gioi thieu san pham',
        //                         style:
        //                             TextStyle(fontSize: 18, color: Colors.grey),
        //                       ),
        //                       SizedBox(
        //                         width: 10,
        //                       ),
        //                       Text(
        //                         'Gia tiền',
        //                         style: TextStyle(
        //                             fontSize: 18,
        //                             fontWeight: FontWeight.bold,
        //                             color: Colors.black),
        //                       ),
        //                     ],
        //                   )),
        //               Expanded(
        //                 flex: 1,
        //                 child: Row(
        //                   children: [
        //                     IconButton(
        //                         onPressed: () {
        //                           setState(() {
        //                             if (_quantity > 1) {
        //                               _quantity -= 1;
        //                             }
        //                           });
        //                         },
        //                         icon: const Icon(Icons.remove)),
        //                     Text('$_quantity'),
        //                     IconButton(
        //                         onPressed: () {
        //                           setState(() {
        //                             // Increase the quantity by 1
        //                             _quantity += 1;
        //                           });
        //                         },
        //                         icon: const Icon(Icons.add)),
        //                   ],
        //                 ),
        //               )
        //             ],
        //           );
        //         }),
        //     const SizedBox(
        //       width: 20,
        //     ),
        //     // Container(
        //     //     decoration: BoxDecoration(
        //     //         shape: BoxShape.circle,
        //     //         color: Colors.grey[400],
        //     //         border: Border.all(color: Colors.black, width: 1.0)),
        //     //     child: Column(
        //     //       children: [
        //     //         priceProduct('Subtotal', '', 'Tiền tổng sản phẩm'),
        //     //         const Divider(
        //     //           height: 1,
        //     //           color: Colors.black,
        //     //         ),
        //     //         priceProduct('Shipping', '', 'Tiền ship'),
        //     //         const Divider(
        //     //           height: 1,
        //     //           color: Colors.black,
        //     //         ),
        //     //         priceProduct('Bag Total', '( 3item )', 'Tiền tổng'),
        //     //       ],
        //     //     )),
        //     ElevatedButton(
        //         onPressed: () {},
        //         style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        //         child: const Text(
        //           'Proceed to Checkout',
        //           style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold),
        //         ))
        //   ],
        // ),
      ),
    );
  }

  Row priceProduct(String type, String? numberItem, String cost) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(type,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        Expanded(
            flex: 1,
            child: Text(numberItem!,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold))),
        Expanded(
            flex: 3,
            child: Text(
              cost,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
