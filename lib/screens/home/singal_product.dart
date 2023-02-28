import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingalProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final VoidCallback onTap;
  const SingalProduct({
    super.key,
    required this.productImage,
    required this.productName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return singalProducts();
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
          // Expanded(
          //   flex: 2,
          //   child: Image.network(
          //       fit: BoxFit.cover,
          //       'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg'),
          // ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image.network(productImage),
            ),
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
