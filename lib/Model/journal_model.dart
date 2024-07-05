class Journal {
  Journal({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  final String? status;
  final int? totalResults;
  final List<Articles> articles;

  factory Journal.fromJson(Map<String, dynamic> json){
    return Journal(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: json["articles"] == null ? [] : List<Articles>.from(json["articles"]!.map((x) => Articles.fromJson(x))),
    );
  }

}

class Articles {
  Articles({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final DateTime? publishedAt;
  final String? content;

  factory Articles.fromJson(Map<String, dynamic> json){
    return Articles(
      source: json["source"] == null ? null : Source.fromJson(json["source"]),
      author: json["author"],
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage"],
      publishedAt: DateTime.tryParse(json["publishedAt"] ?? ""),
      content: json["content"],
    );
  }

}

class Source {
  Source({
    required this.id,
    required this.name,
  });

  final String? id;
  final String? name;

  factory Source.fromJson(Map<String, dynamic> json){
    return Source(
      id: json["id"],
      name: json["name"],
    );
  }

}
