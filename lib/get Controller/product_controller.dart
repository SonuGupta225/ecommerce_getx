import 'package:ecommerce_getx/models/product.dart';
import 'package:get/get.dart';

import '../services/services.dart';



class ProductController extends GetxController{
  // var Product = [];
  var productItem = <Product>[].obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProduct();

  }

void fetchProduct() async{
  try{
    var product =await RemoteService.fetchProduct();
    if(product !=null){
      productItem.assignAll(product);
    }
  }
   catch (e){
    print(e);
   }
}
}