import 'package:kiosonline/models/category.dart';
import 'package:kiosonline/models/item.dart';
import 'package:kiosonline/models/promotion.dart';

class Fake {
  static int numberOfItemsInCart = 1;

  static List<Category> categories = [
    Category('assets/icons/men.svg', 'Men'),
    Category('assets/icons/women-svgrepo-com.svg', 'Women'),
    Category('assets/icons/desk.svg', 'Office'),
  ];

  static List<Promotion> promotions = [
    Promotion(
      backgroundImagePath: 'assets/images/splash1.png',
      reverseGradient: false,
      title: 'All Item Shoes\nDiscount Up to',
      subtitle: '50%',
      tag: '30 July 2022',
      imagePath: 'assets/images/furniture/men-adidas.png',
    ),
    Promotion(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: true,
      title: 'Get voucher gift',
      subtitle: 'Rp.50.000 -',
      caption: '*for new member\'s\nof Shoes Shop',
    )
  ];

  static List<String> trending = [
    'assets/images/shoes/Sepatu_Adidas.jpg',
    'assets/images/shoes/130389.jpg',
  ];

  static List<String> featured = [
    'assets/images/shoes/office-shoes-review.jpg',
    'assets/images/shoes/shoes1.jpg',
    'assets/images/shoes/sneaker-of-the-week-lede.jpg',
    'assets/images/shoes/sneakers.jpg'
  ];

  static List<Item> furniture = [
    Item(
      name: 'Sneakers Superstar Adidas - White',
      imagePath: 'assets/images/shoes/sneakers_superstar_addidas.png',
      originalPrice: 250,
      rating: 4.5,
      discountPercent: 30,
    ),
    Item(
      name: 'Men`s Adidas Shoes Tennis - Black White',
      imagePath: 'assets/images/shoes/adidas_shoes_tennis.png',
      originalPrice: 140,
      rating: 4.4,
      discountPercent: 30,
    ),
    Item(
      name: 'Adidas Running Shoes',
      imagePath:
          'assets/images/shoes/Adidas-Running-Shoes-PNG-Transparent-Image.png',
      originalPrice: 160,
      rating: 4.3,
      discountPercent: 25,
    ),
    Item(
      name: ' Nike Running Shoes',
      imagePath: 'assets/images/shoes/Nike-Running-Shoes-PNG-Picture.png',
      originalPrice: 140,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'Nike Air Max',
      imagePath: 'assets/images/shoes/nike-air-max-ltd-3-687977105-2_1024x.png',
      originalPrice: 380,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'Football Shoes Men`s',
      imagePath: 'assets/images/shoes/Footbal_Shoes_PNG_Clip_Art-3110.png',
      originalPrice: 80,
      rating: 4.0,
      discountPercent: 20,
    ),
  ];
}
