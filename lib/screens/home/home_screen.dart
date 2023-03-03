import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:food_app/screens/home/drawe_tiler.dart';
import 'package:food_app/screens/home/singal_product.dart';
import 'package:food_app/screens/product_overview/product_overview.dart';
import 'package:food_app/screens/search/search.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(
      context,
      listen: false,
    );
    productProvider.fatchHerbProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: DrawerTile(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg'),
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 130, bottom: 10),
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffd1ad17),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Vegi',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.green,
                                              blurRadius: 10,
                                              offset: Offset(3, 3))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '30% Off',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.green[100],
                                    fontWeight: FontWeight.bold),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  'On all vegetables products',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Herbs Seadonings'),
                      Text(
                        'VIew all',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productProvider.getHerbProductDataList.map(
                      (herbsProductData) {
                        return SingalProduct(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ProductOverview(
                                  productImage: herbsProductData.productImage
                                          .toString() ??
                                      '',
                                  productName:
                                      herbsProductData.productName.toString() ??
                                          '',
                                  productPrice: int.parse(herbsProductData
                                          .productPrice
                                          .toString() ??
                                      ''),
                                ),
                              ),
                            );
                          },
                          productImage:
                              herbsProductData.productImage.toString() ?? '',
                          productName:
                              herbsProductData.productName.toString() ?? '',
                          productPrice: int.parse(
                              herbsProductData.productPrice.toString() ?? ''),
                        );
                      },
                    ).toList(),

                    // children: [
                    //   SingalProduct(
                    //     onTap: () {
                    //       Navigator.of(context).push(
                    //         MaterialPageRoute(
                    //           builder: (context) => ProductOverview(),
                    //         ),
                    //       );
                    //     },
                    //     productImage:
                    //         'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                    //     productName: 'Herbs Seadonings',
                    //   ),
                    // ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Herbs Seadonings'),
                      Text(
                        'VIew all',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //       SingalProduct(
                //         onTap: () {},
                //         productImage:
                //             'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                //         productName: 'Herbs Seadonings',
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
