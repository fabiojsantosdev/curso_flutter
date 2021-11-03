import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guia_api/get_connect/get_connect_bindings.dart';
import 'package:guia_api/get_connect/get_connect_page.dart';
import 'package:guia_api/home/home_bindings.dart';
import 'package:guia_api/http/http_bindings.dart';
import 'home/home_page.dart';
import 'http/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => const GetConnectPage(),
              binding: GetConnectBindings(),
            ),
          ],
        ),
      ],
    );
  }
}
