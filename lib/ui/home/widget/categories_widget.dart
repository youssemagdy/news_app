import 'package:flutter/material.dart';
import 'package:news_apps_2/model/category_model.dart';
import 'package:news_apps_2/shared/app_color.dart';
import 'package:news_apps_2/ui/home/widget/category_widget.dart';

typedef onCategoryClick = void Function(CategoriesModel categoriesModel);
class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key, required this.categoryClick}) : super(key: key);
  List<CategoriesModel> categories = CategoriesModel.getAllCategories();
  onCategoryClick categoryClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pick Your Category \nOf interest',
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: AppColors.pickCategoriesColor,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 25,),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 30,
              ),
              itemCount: categories.length,
              itemBuilder: (context , index) => InkWell(
                onTap: (){
                  categoryClick(categories[index]);
                },
                child: CategoryWidget(
                    index: index,
                    categoriesModel: categories[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
