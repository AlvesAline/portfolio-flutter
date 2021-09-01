class Repo {
  String name;
  String htmlUrl;
  int? stargazersCount;
  String? description;
  String? language;
  String? homepage;
  String? svnUrl;
  //String? fullName;

  Repo({
    required this.name,
    required this.htmlUrl,
    required this.stargazersCount,
    required this.description,
    required this.language,
    required this.homepage,
    //required this.fullName,
  });

  factory Repo.fromJson(Map<String, dynamic> json) {
    return Repo(
      name: json['name'],
      htmlUrl: json['html_url'],
      stargazersCount: json['stargazers_count'],
      description: json['description'],
      language: json['language'],
      homepage: json['homepage'],
      //fullName: json['full_name'],
    );
  }
}

class All {
  List<Repo> repos;

  All({required this.repos});

  factory All.fromJson(List<dynamic> json) {
    List<Repo> repos = []; //List<Repo> repos = <Repo>[];
    repos = json.map((r) => Repo.fromJson(r)).toList();
    return All(repos: repos);
  }
}
