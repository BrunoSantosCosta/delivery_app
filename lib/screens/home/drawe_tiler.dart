import 'package:flutter/material.dart';
import 'package:food_app/screens/home/home_screen.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            listTile(icon: Icons.notifications_outlined, title: 'Notification'),
            listTile(icon: Icons.star_outline, title: 'Rating & Review'),
            listTile(icon: Icons.favorite_outline, title: 'Wishlist'),
            listTile(icon: Icons.copy_all_outlined, title: 'Raise a comlaint'),
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
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
