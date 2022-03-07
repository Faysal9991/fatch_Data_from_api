import 'package:flutter/material.dart';
import 'package:get_data_api/home_page.dart';
import 'package:get_data_api/provider/product_provider.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductDataProvider>(create: (_) => ProductDataProvider()),
      ],
      child: Myapp(),
    ),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
