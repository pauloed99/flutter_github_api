import 'package:flutter_github_api/app/bindings/user_binding.dart';
import 'package:flutter_github_api/app/bindings/user_repositories_binding.dart';
import 'package:flutter_github_api/app/routes/app_routes.dart';
import 'package:flutter_github_api/app/views/pages/user_repositories_page.dart';
import 'package:flutter_github_api/app/views/pages/user_search_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const UserSearchPage(),
      binding: UserBinding(),
    ),
    GetPage(
      name: AppRoutes.userRepositories,
      page: () => const UserRepositoriesPage(),
      binding: UserRepositoriesBinding(),
    )
  ];
}
