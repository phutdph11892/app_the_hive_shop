import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_hive_shop/constants.dart';
import 'package:the_hive_shop/models/product.dart';
import 'package:the_hive_shop/screens/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //bo tri theo chieu ngang
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //sử dụng children để truyền 1 mang widget
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: KDefaultPaddin, // chieu doc
                crossAxisSpacing: KDefaultPaddin, //chieu ngang
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press:() => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: products[index]),)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class ItemCard extends StatelessWidget {
//   final Product? product;
//   final Function? press;
//
//   const ItemCard({Key? key, this.product, this.press}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.all(KDefaultPaddin),
//             //for demo we user  fixed height and width
//             //now we dont need them
//             // height: 180,
//             // width: 160,
//             decoration: BoxDecoration(
//                 color: product!.color,
//                 borderRadius: BorderRadius.circular(16)),
//             child: Image.asset(product!.image),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin / 4),
//           child: Text(
//             product!.title,
//             style: TextStyle(color: KTextLightColor),
//           ),
//         ),
//         Text(
//           "\$" + "${product!.price}",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )
//       ],
//     );
//   }
// }

//we need statefull widget for out for our categories

// class Categories extends StatefulWidget {
//   const Categories({Key? key}) : super(key: key);
//
//   @override
//   _CategoriesState createState() => _CategoriesState();
// }
//
// class _CategoriesState extends State<Categories> {
//   List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
//
//   //By default our first item will be selected
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin),
//       child: SizedBox(
//         //Một hộp với một kích thước xác định
//         height: 25,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: categories.length,
//           itemBuilder: (context, index) => buildCategory(index),
//           //Được gọi khi nhấn nút để tạo các mục hiển thị trong menu                        .
//         ),
//       ),
//     );
//   }
//
//   Widget buildCategory(int index) {
//     return GestureDetector(
//       onTap: () {
//         selectedIndex = index;
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
//         child: Column(
//           //hien thi tho chieu ngang
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               categories[index],
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: selectedIndex == index ? KTextColor : KTextLightColor,
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: KDefaultPaddin / 4), //top padding 5
//               //Tạo các trang chỉ với các giá trị đã cho khác
//               height: 2,
//               width: 30,
//               color: selectedIndex == index
//                   ? Colors.black
//                   : Colors.transparent, //ovi tri index thi moi co mau back
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
