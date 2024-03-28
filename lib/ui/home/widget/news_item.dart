import 'package:flutter/material.dart';
import 'package:news_apps_2/model/news_model.dart';

class NewsItem extends StatelessWidget {
  NewsItem({Key? key, required this.artical}) : super(key: key);
  NewsModel artical;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              artical.image,
              height: 0.3 * height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(artical.sourceName),
          Text(artical.titel),
          Align(
            alignment: Alignment.centerRight,
              child: Text(
                artical.date,
              ),
          ),
        ],
      ),
    );
  }
}
