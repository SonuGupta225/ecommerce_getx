import 'package:ecommerce_getx/models/product.dart';
import 'package:http/http.dart' as http;



class RemoteService{
  static var client = http.Client();
  static Future <List<Product>?> fetchProduct () async {
    var respose = await client.get(Uri.parse("https://fakestoreapi.com/products"));

    if(respose.statusCode==200){
      var json = respose.body;
      return productFromJson(json);
    } else{
      print("error respose ${respose.body}");
    }
    return null;
  }
}

