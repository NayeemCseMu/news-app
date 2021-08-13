class NewsModel {
  String? status;
  int? totalResults;
  List<Articles?>? articles;

  NewsModel({
    this.status,
    this.totalResults,
    this.articles,
  });
  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json["status"]?.toString();
    totalResults = json["totalResults"]?.toInt();
    if (json["articles"] != null) {
      final v = json["articles"];
      final arr0 = <Articles>[];
      v.forEach((v) {
        arr0.add(Articles.fromJson(v));
      });
      articles = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["status"] = status;
    data["totalResults"] = totalResults;
    if (articles != null) {
      final v = articles;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["articles"] = arr0;
    }
    return data;
  }
}

class Articles {
  ArticlesSource? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Articles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  Articles.fromJson(Map<String, dynamic> json) {
    source = (json["source"] != null)
        ? ArticlesSource.fromJson(json["source"])
        : null;
    author = json["author"]?.toString();
    title = json["title"]?.toString();
    description = json["description"]?.toString();
    url = json["url"]?.toString();
    urlToImage = json["urlToImage"]?.toString();
    publishedAt = json["publishedAt"]?.toString();
    content = json["content"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (source != null) {
      data["source"] = source!.toJson();
    }
    data["author"] = author;
    data["title"] = title;
    data["description"] = description;
    data["url"] = url;
    data["urlToImage"] = urlToImage;
    data["publishedAt"] = publishedAt;
    data["content"] = content;
    return data;
  }
}

class ArticlesSource {
  String? id;
  String? name;

  ArticlesSource({
    this.id,
    this.name,
  });
  ArticlesSource.fromJson(Map<String, dynamic> json) {
    id = json["id"]?.toString();
    name = json["name"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["name"] = name;
    return data;
  }
}
