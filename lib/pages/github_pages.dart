import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:portfolio/models/repo.dart';

Future<All> fetchRepos() async {
  final response = await http
      .get(Uri.parse('https://api.github.com/users/AlvesAline/repos'));

  if (response.statusCode == 200) {
    print(response.body);
    return All.fromJson(json.decode(response.body));
  } else {
    throw Exception('Fail to fetch Repos');
  }
}

class GitPages extends StatefulWidget {
  @override
  _GitPagesState createState() => _GitPagesState();
}

class _GitPagesState extends State<GitPages> {
  late Future<All> futureRepo;
  @override
  void initState() {
    super.initState();
    futureRepo = fetchRepos();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meus Projetos'),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              child: FutureBuilder<All>(
                  future: futureRepo,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Repo> repos = [];
                      for (int i = 0; i < snapshot.data!.repos.length; i++) {
                        repos.add(
                          Repo(
                            name: snapshot.data!.repos[i].name,
                            description: snapshot.data!.repos[i].description,
                            htmlUrl: snapshot.data!.repos[i].htmlUrl,
                            stargazersCount:
                                snapshot.data!.repos[i].stargazersCount,
                            language: snapshot.data!.repos[i].language,
                            homepage: snapshot.data!.repos[i].homepage,
                            //fullName: snapshot.data!.repos[i].fullName,
                          ),
                        );
                      }
                      return ListView(
                        children: repos
                            .map(
                              (r) => Card(
                                color: Colors.amber[100],
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            r.name,
                                            style: TextStyle(),
                                          ),
                                          Text(r.stargazersCount.toString()),
                                        ],
                                      ),
                                      Text(r.description ?? ''),
                                      Text(r.htmlUrl),
                                      Text(r.language ?? ''),
                                      Text(r.homepage ?? ''),
                                      // Text(
                                      //     "https://raw.githubusercontent.com/${r.fullName}/master/README.md")
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('Error Aliiiiiineeeeee!'),
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
        ));
  }
}
