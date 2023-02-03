import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:furnitureappui/widgets/cat_product_card.dart';

class CategoryScreen extends StatelessWidget {
  final String categories;
  const CategoryScreen({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF3F6FD),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
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
                    Text(
                      categories,
                      style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        color: const Color(0xFFF3F6FD),
                        intensity: 1,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(CupertinoIcons.cart_fill),
                      ),
                    )
                  ]),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)),
                        color: const Color(0xFFF3F6FD),
                        intensity: 1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 30,
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.sort),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Sort',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )),
                Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20)),
                        color: const Color(0xFFF3F6FD),
                        intensity: 1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 30,
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.filter_list),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Filter',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                padding: const EdgeInsets.only(
                    top: 20, bottom: 50, left: 5, right: 5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width - 15 - 10) /
                            (2 * 250),
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 5),
                itemBuilder: (context,index){
                  if(index%2==0){
                    return CatProductCard(pIndex: index,);
                  }
                  return OverflowBox(
                    maxHeight: 250+70,
                    child: Container(
                      margin: const EdgeInsets.only(top: 70),
                      child: CatProductCard(pIndex: index,),
                    ),
                  );
                })
          ]),
        ),
      ),
    );
  }
}
