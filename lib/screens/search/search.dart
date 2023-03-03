import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/widgets/single_item.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu_rounded),
          )
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('Items'),
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: 'Search for items in the store',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(height: 5),
          SingleItem(),
          SingleItem(),
          SingleItem(),
          SingleItem(),
          SingleItem(),
        ],
      ),
    );
  }
}
