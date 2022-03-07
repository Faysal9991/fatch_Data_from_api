import 'package:flutter/material.dart';
import 'package:get_data_api/provider/product_provider.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Provider.of<ProductDataProvider>(context,listen: false).getProductData();
    return Scaffold(
      body: Consumer<ProductDataProvider>(
        builder: (context,ProductDataProvider,child){
          return Column(
            children: [
              Text(ProductDataProvider.productModel.success.toString()),
              Text(ProductDataProvider.productModel.status.toString()),
            ],
          );
        },
      ),
    );
  }
}
