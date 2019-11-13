class CountRepositories {
  final String totalCount;
  final Rep items;

  CountRepositories.fromJson(Map json)
      : totalCount = json['total_count'],
        items = Rep.fromJson(json['items']);
}

class Rep {
  final String id;
  final String name;
  final String issues;
  final String fork;
  final String url;

  Rep.fromJson(Map json)
      : id = json['id'],
        name = json['full_name'],
        issues = json['open_issues'],
        fork = json['forks'],
        url = json['html_url'];
}
