import 'dart:async';
import 'package:food_order/models/ProductModel.dart';
import 'package:get/get.dart';

class ProducsController extends GetxController {
  static ProducsController instance = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  String collection = "products";

  @override
  onReady() {
    super.onReady();
   // products.bindStream(getAllProducts());
  }

  // Stream<List<ProductModel>> getAllProducts() =>
  //     firebaseFirestore.collection(collection).snapshots().map((query) =>
  //         query.docs.map((item) => ProductModel.fromMap(item.data())).toList());

}

