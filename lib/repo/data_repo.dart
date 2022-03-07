import 'dart:convert';

import 'package:get_data_api/model/dta_model.dart';
import 'package:http/http.dart'as http;
class ProductDataRepo{
  Future<ProductModel>getDataFromApi()async{
   var url = Uri.parse("https://preronaiuddokta.com/api/user/getpackages");
    http.Response response = await http.get(url);
    if(response.statusCode==200){
     var product = ProductModel.fromJson(jsonDecode(response.body));
     print("ffffff");
      return product;
    }
    else{
      throw Exception("Server Error");
    }
  }
}