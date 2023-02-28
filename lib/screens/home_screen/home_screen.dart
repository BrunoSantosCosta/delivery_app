import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        'title',
        style: TextStyle(color: Colors.red),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Welcome Guest'),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                            child: const Text('Login'),
                            onPressed: () {},

                            //  RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: 'Home'),
              listTile(icon: Icons.shop_outlined, title: 'Review Cart'),
              listTile(icon: Icons.person_outline, title: 'My Profile'),
              listTile(
                  icon: Icons.notifications_outlined, title: 'Notification'),
              listTile(icon: Icons.star_outline, title: 'Rating & Review'),
              listTile(icon: Icons.favorite_outline, title: 'Wishlist'),
              listTile(
                  icon: Icons.copy_all_outlined, title: 'Raise a comlaint'),
              listTile(icon: Icons.format_quote_outlined, title: 'FAQs'),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Contact Support'),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text('call us:'),
                        Text('+92335280282'),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Mill us:'),
                          SizedBox(height: 10),
                          Text('+92335280282'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
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
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
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
                    children: [
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
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
                    children: [
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                      singalProducts(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container singalProducts() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: const Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                fit: BoxFit.cover,
                'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Fresh Basil',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '50\$/50 gram',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  '50 Gram',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xffd0b84c),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.add,
                                size: 20,
                                color: Color(0xffd0b84c),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         height: 30,
                  //         // decoration: BoxDecoration(borderRadius: BorderRadius.),
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: const [
                  //               Text('50 Gram'),
                  //               Icon(
                  //                 Icons.arrow_drop_down,
                  //                 color: Colors.yellow,
                  //                 size: 20,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Container(
                  //         height: 30,
                  //         // decoration: BoxDecoration(borderRadius: BorderRadius.),
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: const [
                  //               Text('50 Gram'),
                  //               Icon(
                  //                 Icons.arrow_drop_down,
                  //                 color: Colors.yellow,
                  //                 size: 20,
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
