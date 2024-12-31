import 'package:boxly/core/constants/routes_constants.dart';
import 'package:boxly/infra/app_initializer.dart';
import 'package:boxly/infra/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await InitializeApp.initialize();

  runApp(const BoxlyApp());
}

class BoxlyApp extends StatelessWidget {
  const BoxlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Boxly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.splash,
      getPages: AppRoutes.routes,
    );
  }
}
