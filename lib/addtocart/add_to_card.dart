import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:training/common_widget/add_product.dart';

import '../common_widget/appbar_widget.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  String selectedSize = 'M';
  final List<String> imageUrls = [
    'assets/images/test1.jpg',
    'assets/images/images.jpg',
    'assets/images/image1.jpg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height / 2.2,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: imageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBarWidget(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.52,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageUrls.map((url) {
                int index = imageUrls.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5,
            left: 0,
            right: 0,
            child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Name product',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              )),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text('Name description',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                    fontSize: 18)),
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('Rating',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18))),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const AddProduct(),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              alignment: Alignment.center,
                              child: const Text('Available in stock',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16))),
                        ],
                      )
                    ],
                  ),
                ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget sizeOption(String size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 50,
        height: 35,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedSize == size ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black, width: 1.0),
        ),
        child: Text(
          size,
          textAlign: TextAlign.center, // Đặt giá trị TextAlign.center
          style: TextStyle(
            color: selectedSize == size ? Colors.white : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
