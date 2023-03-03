import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleItem extends StatelessWidget {
  bool? isBool = false;
  SingleItem({this.isBool});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Image.network(
                      'https://thumbs.dreamstime.com/b/fresh-fruits-vegetables-berries-black-background-banner-top-view-free-space-your-text-164647327.jpg'),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 90,
                  child: Column(
                    mainAxisAlignment: isBool == false
                        ? MainAxisAlignment.spaceAround
                        : MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: const [
                          Text(
                            'productName',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '50\$/50 Gram',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      isBool == false
                          ? Container(
                              margin: const EdgeInsets.only(right: 15),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: const [
                                  Expanded(
                                    child: Text(
                                      '50 Gram',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Text('50 Gram'),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 90,
                  padding: isBool == false
                      ? const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 32,
                        )
                      : const EdgeInsets.only(
                          left: 15,
                          right: 32,
                        ),
                  child: isBool == false
                      ? Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                                Text(
                                  'ADD',
                                  style: TextStyle(
                                    color: Colors.amber,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Column(
                          children: [
                            const Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.black54,
                            ),
                            const SizedBox(height: 5),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.yellow,
                                      size: 20,
                                    ),
                                    Text(
                                      'ADD',
                                      style: TextStyle(
                                        color: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        isBool == false
            ? Container()
            : const Divider(
                height: 1,
                color: Colors.black45,
              )
      ],
    );
  }
}
