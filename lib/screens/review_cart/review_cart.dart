import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_app/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('Total Aount'),
        subtitle: Text(
          '\$ 170.00',
          style: TextStyle(
            color: Colors.green[900],
          ),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text('Submit'),
            onPressed: () {},
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Review Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
