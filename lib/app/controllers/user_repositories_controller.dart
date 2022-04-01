import 'package:flutter_github_api/app/data/models/user_repositories.dart';
import 'package:flutter_github_api/app/data/repositories/user_repositories_repository.dart';
import 'package:get/get.dart';

class UserRepositoriesController extends GetxController
    with StateMixin<List<UserRepositories>> {
  final UserRepositoriesRepository userRepositoriesRepository;

  UserRepositoriesController({required this.userRepositoriesRepository});

  @override
  void onInit() {
    super.onInit();
    getUserRepositories(Get.arguments);
  }

  void getUserRepositories(String name) async {
    userRepositoriesRepository.getUserRepositories(name).then(
      (value) {
        value.sort(
          (b, a) => a.stargazersCount.compareTo(b.stargazersCount),
        );
        change(value, status: RxStatus.success());
      },
      onError: (err) => change(null, status: RxStatus.error()),
    );
  }
}
