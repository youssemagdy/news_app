import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_apps_2/model/news_respons/Articles.dart';

class NewsItem extends StatelessWidget {
  NewsItem({Key? key, required this.artical}) : super(key: key);
  Article artical;
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
            child: CachedNetworkImage(
              imageUrl: artical.urlToImage ?? '',
              height: 0.3 * height,
              width: double.infinity,
              fit: BoxFit.cover,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                    child: CircularProgressIndicator(
                        value: downloadProgress.progress,
                    ),
                  ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Text(artical.source?.name ?? ''),
          Text(artical.title ?? ''),
          Align(
            alignment: Alignment.centerRight,
              child: Text(
                artical.publishedAt ?? '',
              ),
          ),
        ],
      ),
    );
  }
}
