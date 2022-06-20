import 'package:flutter/material.dart';
import 'package:kiosonline/data/fake.dart';
import 'package:kiosonline/screens/category/category_screen.dart';
import 'package:kiosonline/screens/home/widgets/category_card.dart';
import 'package:kiosonline/screens/home/widgets/header.dart';
import 'package:kiosonline/screens/home/widgets/image_card.dart';
import 'package:kiosonline/screens/home/widgets/promo_card.dart';
import 'package:kiosonline/screens/home/widgets/section.dart';
import 'package:kiosonline/widgets/app_bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  onCategorySelected(category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Section(
                'Categories',
                Fake.categories.map((c) {
                  return CategoryCard(
                    title: c.title,
                    iconPath: c.iconPath,
                    onTap: () {
                      onCategorySelected(c);
                    },
                  );
                }).toList(),
              ),
              Section(
                'Today\'s Promo',
                Fake.promotions.map((p) {
                  return PromoCard(
                    title: p.title,
                    subtitle: p.subtitle,
                    tag: p.tag,
                    caption: p.caption,
                    imagePath: p.imagePath,
                    backgroundImagePath: p.backgroundImagePath,
                  );
                }).toList(),
              ),
              Section(
                  "Trending Shoes",
                  Fake.trending
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
              Section(
                  "Featured Shoes",
                  Fake.featured
                      .map((imagePath) => ImageCard(imagePath))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
