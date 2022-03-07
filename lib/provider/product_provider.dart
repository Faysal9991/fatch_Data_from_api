

import 'package:flutter/foundation.dart';
import 'package:get_data_api/model/dta_model.dart';
import 'package:get_data_api/repo/data_repo.dart';

class ProductDataProvider with ChangeNotifier{
ProductDataRepo  productDataRepo = ProductDataRepo();
ProductModel _productModel = ProductModel.name();

ProductModel get productModel => _productModel;
getProductData()async{
  _productModel=await productDataRepo.getDataFromApi();
  notifyListeners();

}
}