import 'package:flutter/material.dart';
import 'package:flutter_github_api/views/pages/repositories_list_page.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Github API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '',
      routes: {
        '': (_) => const RepositoriesListPage()
      },
    );
  }
}

