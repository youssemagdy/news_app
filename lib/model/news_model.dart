class NewsModel{
  String id;
  String titel;
  String image;
  String sourceName;
  String date;
  NewsModel({
    required this.id,
    required this.titel,
    required this.image,
    required this.sourceName,
    required this.date
  });
  static List<NewsModel> newsList = [
    NewsModel(
      id: '1',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'
    ),
    NewsModel(
      id: '2',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'
    ),
    NewsModel(
      id: '3',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'
    ),
    NewsModel(
      id: '4',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'

    ),
    NewsModel(
      id: '5',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'
    ),
    NewsModel(
      id: '6',
      titel: 'Why are footballs biggest clubs starting a new tournament?',
      image: 'assets/image/NewsTest@3x.png',
      sourceName: 'BBC',
      date: '3 hour age'
    ),
  ];
}