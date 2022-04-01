class UserRepositories {
  late int id;
  late String name;
  late String htmlUrl;
  late String createdAt;
  late String updatedAt;
  String? pushedAt;
  late String cloneUrl;
  late int stargazersCount;
  String? language;

  UserRepositories(
      {required this.id,
      required this.name,
      required this.htmlUrl,
      required this.createdAt,
      required this.updatedAt,
      this.pushedAt,
      required this.cloneUrl,
      required this.stargazersCount,
      this.language});

  UserRepositories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    htmlUrl = json['html_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pushedAt = json['pushed_at'];
    cloneUrl = json['clone_url'];
    stargazersCount = json['stargazers_count'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['html_url'] = htmlUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['pushed_at'] = pushedAt;
    data['clone_url'] = cloneUrl;
    data['stargazers_count'] = stargazersCount;
    data['language'] = language;
    return data;
  }
}