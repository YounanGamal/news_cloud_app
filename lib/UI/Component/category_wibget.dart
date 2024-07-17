import 'package:flutter/material.dart';

class CategoryWibget extends StatelessWidget {
  CategoryItem item;
  int index;

  CategoryWibget({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: item.bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(index.isEven ? 25 : 0),
          bottomRight: Radius.circular(index.isEven ? 0 : 25),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            item.imagePath,
            width: 131,
            height: 116,
          ),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem {
  String id;
  String title;
  String imagePath;
  Color bgColor;

  CategoryItem({
    required this.id,
    required this.title,
    required this.imagePath,
    required this.bgColor,
  });

 static List<CategoryItem> getCategoryList(){
   return [
     CategoryItem(
         id: 'sports',
         title: 'Sports',
         imagePath: 'assets/image/sports.png',
         bgColor: Color(0xffC91C22)),
     CategoryItem(
         id: 'general',
         title: 'General',
         imagePath: 'assets/image/Politics.png',
         bgColor: Color(0xff003E90)),
     CategoryItem(
         id: 'health',
         title: 'Health',
         imagePath: 'assets/image/health.png',
         bgColor: Color(0xffED1E79)),
     CategoryItem(
         id: 'business',
         title: 'Business',
         imagePath: 'assets/image/bussines.png',
         bgColor: Color(0xffCF7E48)),
     CategoryItem(
         id: 'entertainment',
         title: 'entertainment',
         imagePath: 'assets/image/environment.png',
         bgColor: Color(0xff4882CF)),
     CategoryItem(
         id: 'science',
         title: 'Science',
         imagePath: 'assets/image/science.png',
         bgColor: Color(0xffF2D352)),
   ];
 }
}
