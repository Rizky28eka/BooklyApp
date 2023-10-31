import 'package:flutter/material.dart';
import 'ShopModel.dart';

class ShopProvider with ChangeNotifier {
  ShopModel? shopData;

  void setShopData(ShopModel data) {
    shopData = data;
    notifyListeners();
  }
}
