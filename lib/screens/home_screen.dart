// import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../widgets/products_widgets.dart';
import '../screens/category_screen.dart';

class HomeScreen extends StatelessWidget {
  
  final List<String> categories = [
    'Chairs',
    'Sofas',
    'Beds',
    'Tables',
    'Doors',
    'Windows'
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Material(
          color: const Color(0xFFF3F6FD),
          child: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Our Products',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {},
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(12)),
                              color: const Color(0xFFF3F6FD),
                              intensity: 1),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.search),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Categories Tab Bar View
              const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.black54,
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  unselectedLabelColor: Colors.black38,
                  tabs: [
                    Tab(
                      text: 'Chairs',
                    ),
                    Tab(
                      text: 'Sofas',
                    ),
                    Tab(
                      text: 'Beds',
                    ),
                    Tab(
                      text: 'Tables',
                    ),
                  ]),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 360,
                child: TabBarView(children: [
                  ProductsWidget(
                    productImagePath: 'images/product1.png',
                  ),
                  ProductsWidget(
                    productImagePath: 'images/product2.png',
                  ),
                  ProductsWidget(
                    productImagePath: 'images/product4.png',
                  ),
                  ProductsWidget(
                    productImagePath: 'images/product3.png',
                  ),
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>CategoryScreen(categories:categories[index],), ));
                        },
                        child: Neumorphic(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              color: const Color(0xFFF3F6FD),
                              intensity: 1),
                          child: Center(
                              child: Text(
                            categories[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Best Offers',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              //Offer slider
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minLeadingWidth: 70,
                      leading: Image.asset('images/product_${index + 1}.png'),
                      title: const Text(
                        'Product Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                      subtitle: const Text(
                        'Category',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black38),
                      ),
                      trailing: Text(
                        '₹${1000 + ((index + 1) * 100)}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    );
                  })
            ]),
          ))),
    );
  }
}
