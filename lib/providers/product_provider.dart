import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';

dynamic gerenalHerb;

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbProductList = [];
  late ProductModel productModel;
  fatchHerbProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();

    for (var element in value.docs) {
      productModel = ProductModel(
        productImage: element.get('productImage'),
        productName: element.get('productName'),
        productPrice: element.get('productPrice'),
      );
      newList.add(productModel);
      herbProductList = newList;

      notifyListeners();
    }
  }

  List<ProductModel> get getHerbProductDataList {
    return herbProductList;
  }
}
