import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureappui/screens/product_screen.dart';

class ProductsWidget extends StatelessWidget {
  final String productImagePath;
  const ProductsWidget({super.key, required this.productImagePath});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            width: 270,
            child: Stack(
              children: [
                SizedBox(
                  height: 320,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12),
                        ),
                        color: const Color(0xFFF3F6FD),
                        intensity: 1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const ProductScreen()));
                              },
                              child: Image.asset(
                                productImagePath,
                                height: 250,
                                width: 250,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Text(
                              'Product Name',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '₹${1000 + (index * 100)}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54),
                            )
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: const Color(0xFF35324C),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  spreadRadius: 4,
                                )
                              ]),
                          child: const Icon(
                            CupertinoIcons.cart_fill_badge_plus,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
