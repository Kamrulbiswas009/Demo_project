import 'package:flutter/material.dart';
import 'package:flutter_application_1/service_management/screen/service_managment.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: ServiceManagment());
  }
}
