import 'package:flutter/material.dart';
import 'package:pumpskin_lica/page/page.dart';
import 'package:pumpskin_lica/routes/route_settings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pumpskin',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.allRoutes,
      home: HomePage(),
    );
  }
}

