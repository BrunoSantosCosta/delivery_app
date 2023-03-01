import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/screens/home/drawe_tiler.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        Divider(height: 1),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      drawer: const DrawerTile(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 547,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 250,
                          height: 80,
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Assar Bugti',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text('EmaiL@gmail.com')
                                ],
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.yellow,
                                radius: 25,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.red,
                                  child: Icon(
                                    Icons.edit,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    listTile(
                      icon: Icons.shop_outlined,
                      title: 'My Orders',
                    ),
                    listTile(
                      icon: Icons.location_on_outlined,
                      title: 'My Delivery Address',
                    ),
                    listTile(
                      icon: Icons.person_outline,
                      title: 'Refer A Friends',
                    ),
                    listTile(
                      icon: Icons.file_copy_outlined,
                      title: 'Terms & Conditions',
                    ),
                    listTile(
                      icon: Icons.policy_outlined,
                      title: 'Privacity Policy',
                    ),
                    listTile(
                      icon: Icons.add_chart,
                      title: '',
                    ),
                    listTile(
                      icon: Icons.exit_to_app_outlined,
                      title: 'Log Out',
                    ),
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
