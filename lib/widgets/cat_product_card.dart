// import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureappui/screens/product_screen.dart';

class CatProductCard extends StatelessWidget {
  final int pIndex;
  const CatProductCard({super.key, required this.pIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                color: const Color(0xFFF3F6FD),
                intensity: 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(context)=> const ProductScreen() ));
                    },
                    child: Image.asset(
                      'images/product_${pIndex + 1}.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  const Text(
                    'Product Name',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    '₹${((pIndex+1)*100+1000)}',
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  )
                ],
              ),
            )));
  }
}
