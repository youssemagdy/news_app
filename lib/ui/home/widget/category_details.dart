import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_apps_2/model/category_model.dart';
import 'package:news_apps_2/shared/api/api_manger.dart';
import 'package:news_apps_2/ui/home/widget/news_list_widget.dart';
import 'package:news_apps_2/ui/home/widget/sources_widget.dart';

class CategoryDetails extends StatefulWidget {
  CategoriesModel categoryModel;
  CategoryDetails({Key? key, required this.categoryModel}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int selectedSourec = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManger.getSourses(widget.categoryModel.id),
        builder: (context , snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else if(snapshot.hasError || snapshot.data?.status == 'Error'){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          var sources = snapshot.data?.sources ?? [];
          return DefaultTabController(
            length: sources.length,
            child: Column(
              children: [
                TabBar(
                  onTap: (index){
                    selectedSourec = index;
                    setState(() {});
                  },
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  tabs: sources.map((source) => SourcesWidget(
                    source: source,
                    isSelected: selectedSourec == sources.indexOf(source),
                  ),
                  ).toList(),
                ),
                const NewsListWidget(),
              ],
            ),
          );
        }
    );
  }
}
