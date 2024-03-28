import 'package:flutter/material.dart';
import 'package:news_apps_2/model/news_model.dart';
import 'package:news_apps_2/ui/home/widget/news_item.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemBuilder: (context, index) => NewsItem(artical: NewsModel.newsList[index]),
        itemCount: NewsModel.newsList.length,
      ),
    );
  }
}
