import 'package:flutter/material.dart';
import 'package:news_cloud_app/Style/mytheme.dart';

typedef OnDrawerItemClicked = void Function(DrawerItem);

class HomeDrawer extends StatelessWidget {
  OnDrawerItemClicked onDrawerItemClicked;

  HomeDrawer({super.key, required this.onDrawerItemClicked});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: MyTheme.primaryColor,
            alignment: Alignment.center,
            width: double.infinity,
            height: 110,
            child: const Text(
              'News App!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              onDrawerItemClicked(DrawerItem.categories);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    color: Colors.black,
                    size: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onDrawerItemClicked(DrawerItem.settings);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
enum DrawerItem{
  categories,
  settings,
}