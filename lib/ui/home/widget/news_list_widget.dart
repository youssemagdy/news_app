import 'package:flutter/material.dart';
import 'package:news_apps_2/model/soursess_response/Source.dart';
import 'package:news_apps_2/shared/api/api_manger.dart';
import 'package:news_apps_2/ui/home/widget/news_item.dart';

class NewsListWidget extends StatefulWidget {
  final Source source;
  const NewsListWidget({Key? key, required this.source}) : super(key: key);

  @override
  State<NewsListWidget> createState() => _NewsListWidgetState();
}

class _NewsListWidgetState extends State<NewsListWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManger.getNews(widget.source.id ?? ''),
        builder: (context , snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else if (snapshot.hasError || snapshot.data?.status == 'Error'){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children :[
                Text(snapshot.data?.message ?? snapshot.error.toString()),
                ElevatedButton(
                  onPressed: (){
                    setState(() {});
                  },
                  child: const Text('Try Again'),
                ),
              ],
            );
          }
          var newsList = snapshot.data?.articles ?? [];
          return Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemBuilder: (context, index) => NewsItem(
                  artical: newsList[index]
              ),
              itemCount: newsList.length,
            ),
          );
        },
    );
  }
}
