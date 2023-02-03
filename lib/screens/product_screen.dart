import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F5FC),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                const Text(
                  'Product Name',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    color: const Color(0xFFF3F6FD),
                    intensity: 1,
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                'images/product_1.png',
                fit: BoxFit.cover,
                height: 350,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Product Name',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '₹1100',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Chairs',
                style: TextStyle(fontSize: 17, color: Colors.black38),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "You can identify genuine leather by texture and smell. It should be soft and warm to the touch and should have a distinctive aroma which is rich and appealing, unlike faux leather which emits un unpleasant chemical smell.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black38,
              ),
              textAlign: TextAlign.justify,
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
          height: 90,
          decoration: const BoxDecoration(
              color: Color(0xFFF3F6FD),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2)
              ]),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                '+ Add to Cart',
                style: TextStyle(
                    color: Color(0xFF35324C),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
          )),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: const Color(0xFF35324C),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 4)
              ]),
          child: const Icon(
            CupertinoIcons.cart_fill_badge_plus,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
