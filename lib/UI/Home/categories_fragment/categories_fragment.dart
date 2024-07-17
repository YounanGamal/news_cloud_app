import 'package:flutter/material.dart';
import 'package:news_cloud_app/UI/Component/category_wibget.dart';

typedef OnCategoriesClicked = void Function(CategoryItem);

class CategoriesFragment extends StatelessWidget {
  OnCategoriesClicked onCategoriesClicked;

  CategoriesFragment({super.key, required this.onCategoriesClicked});

  List<CategoryItem> categories = CategoryItem.getCategoryList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Pick your category\nof interest',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff4F5A69),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          onCategoriesClicked(categories[index]);
                        },
                        child: CategoryWibget(
                            item: categories[index], index: index));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
