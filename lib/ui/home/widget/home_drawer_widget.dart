import 'package:flutter/material.dart';
// ignore: camel_case_types
typedef onMenuItemClick = void Function (MenuItem item);
// ignore: must_be_immutable
class HomeDrawerWidget extends StatelessWidget {
  onMenuItemClick itemClick;
  HomeDrawerWidget({Key? key, required this.itemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.primary,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              'News App!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              itemClick(MenuItem.categories);
            },
            child: Row(
              children: [
                const Icon(Icons.list,),
                const SizedBox(width: 10,),
                Text('Categories', style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              itemClick(MenuItem.settings);
            },
            child: Row(
              children: [
                const Icon(Icons.settings,),
                const SizedBox(width: 10,),
                Text('Settings', style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum MenuItem{
  categories,
  settings,

}
