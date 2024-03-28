import 'package:news_apps_2/model/soursess_response/Source.dart';

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : "https://www.facebook.com/bbcnews"
/// title : "Men in jury confusion lose High Court battle"
/// description : "Paul and Matthew Yusuff, and Moussa Traore, will face a retrial over the death of Adrian Keise."
/// url : "https://www.bbc.co.uk/news/uk-england-london-68675672"
/// urlToImage : "https://ichef.bbci.co.uk/news/1024/branded_news/5C8C/production/_133029632_7513b71c-6326-48fc-a57b-d021ace4cfc0.jpg"
/// publishedAt : "2024-03-27T12:39:52Z"
/// content : "Three men facing a retrial over a man's death, due to a jury forewoman \"mistake\", have lost a High Court challenge to their ongoing detention.\r\nIn January Paul and Matthew Yusuff and Moussa Traore we… [+3114 chars]"

class Article {
  Article({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,
  });

  Article.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
Article copyWith({
  Source? source,
  String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => Article(
  source: source ?? this.source,
  author: author ?? this.author,
  title: title ?? this.title,
  description: description ?? this.description,
  url: url ?? this.url,
  urlToImage: urlToImage ?? this.urlToImage,
  publishedAt: publishedAt ?? this.publishedAt,
  content: content ?? this.content,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}