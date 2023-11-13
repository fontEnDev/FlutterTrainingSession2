import 'package:flutter/material.dart';
import 'package:training/common_widget/appbar_widget.dart';

import '../common_widget/add_product.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<StatefulWidget> createState() => _MyCart();
}

class _MyCart extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: const AppBarWidget(),
          body: Container(
            height: MediaQuery.of(context).size.height,
            margin:
                const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'My Cart',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Expanded(
                              flex: 0,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Icon(
                                  Icons.image,
                                  size: 100,
                                ),
                              )),
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Name product',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 18),
                                    )),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: const Text('Name description',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                          fontSize: 18)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text('\$45.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 18))),
                              ],
                            ),
                          ),
                          const Expanded(
                            flex: 0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                AddProduct()
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        priceProduct('Subtotal', '', '\$500'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        priceProduct('Shipping', '', '\$500'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        priceProduct('Bag Total', '(10 item)', '\$500'),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10),
                          ),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 40)),
                      child: const Text(
                        'Proceed to Checkout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ),
        ),
      );
  }

  Row priceProduct(String type, String? numberItem, String cost) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Text(type,
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold))),
        Expanded(
            flex: 2,
            child: Text(numberItem!,
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold))),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: Text(
            cost,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
