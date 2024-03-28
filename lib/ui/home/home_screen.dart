import 'package:flutter/material.dart';
import 'package:news_apps_2/model/category_model.dart';
import 'package:news_apps_2/ui/home/widget/categories_widget.dart';
import 'package:news_apps_2/ui/home/widget/category_details.dart';
import 'package:news_apps_2/ui/home/widget/home_drawer_widget.dart';
import 'package:news_apps_2/ui/home/widget/setting_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Widget selectedWidget;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    selectedWidget = CategoriesWidget(categoryClick: onCategoryItemClick);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/pattern.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App', ),
        ),
        drawer: HomeDrawerWidget(
          itemClick: onMenuItemClick,
        ),
        body: selectedWidget,
      ),
    );
  }

  void onMenuItemClick(MenuItem item){
    print(item);
    switch(item){
      case MenuItem.categories:{
        selectedWidget = CategoriesWidget(
          categoryClick: onCategoryItemClick,
        );
        Navigator.of(context).pop();
        setState((){});
      }
      break;
      case MenuItem.settings:{
        selectedWidget = const SettingWidget();
        Navigator.of(context).pop();
        setState((){});
      }
      break;
    }
  }

  void onCategoryItemClick(CategoriesModel categoriesModel){
    print(categoriesModel.title);
    selectedWidget = CategoryDetails(categoryModel: categoriesModel,);
      setState((){});
  }
}
