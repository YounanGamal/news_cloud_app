import 'package:flutter/material.dart';
import 'package:news_cloud_app/UI/Component/category_wibget.dart';

class CategoryDetails extends StatelessWidget {
  CategoryItem categoryItem;
  CategoryDetails({required this.categoryItem});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Text(categoryItem.title),
    );
  }
}
