import 'package:flutter/material.dart';
import 'package:news_cloud_app/UI/Component/category_wibget.dart';
import 'package:news_cloud_app/UI/Home/categories_fragment/categories_fragment.dart';
import 'package:news_cloud_app/UI/Home/categories_fragment/category_details.dart';
import 'package:news_cloud_app/UI/Home/home_drawer.dart';
import 'package:news_cloud_app/UI/Home/settings_fragment/settings_fragment.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget = CategoriesFragment(
      onCategoriesClicked: onCategoriesClicked,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/image/pattern.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('News Cloud'),
        ),
        drawer: HomeDrawer(
          onDrawerItemClicked: onDrawerItemClicked,
        ),
        body: selectedWidget,
      ),
    );
  }

  late Widget selectedWidget;

  void onDrawerItemClicked(DrawerItem item) {
    switch (item) {
      case DrawerItem.categories:
        {
          selectedWidget = CategoriesFragment(
            onCategoriesClicked: onCategoriesClicked,
          );
        }
      case DrawerItem.settings:
        {
          selectedWidget = SettingsFragment();
        }
    }
    Navigator.pop(context);
    setState(() {});
  }

  void onCategoriesClicked(CategoryItem categoryItem) {
    selectedWidget = CategoryDetails(
      categoryItem: categoryItem,
    );
    setState(() {});
  }
}
