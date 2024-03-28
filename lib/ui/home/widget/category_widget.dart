import 'package:flutter/material.dart';
import 'package:news_apps_2/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  CategoriesModel categoriesModel;
  int index;
  CategoryWidget({Key? key, required this.index, required this.categoriesModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: categoriesModel.background,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(27),
          topRight: const Radius.circular(27),
          bottomLeft: Radius.circular(index.isEven?0:27),
          bottomRight: Radius.circular(index.isEven?27:0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              'assets/image/${categoriesModel.imageName}',
              height: height * 0.10,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(height: 10,),
            Text(
              categoriesModel.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
