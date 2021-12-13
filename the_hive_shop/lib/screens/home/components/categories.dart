import 'package:flutter/material.dart';
import 'package:the_hive_shop/constants.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];

  //By default our first item will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPaddin),
      child: SizedBox(
        //Một hộp với một kích thước xác định
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
          //Được gọi khi nhấn nút để tạo các mục hiển thị trong menu                        .
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
        child: Column(
          //hien thi tho chieu ngang
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? KTextColor : KTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: KDefaultPaddin / 4), //top padding 5
              //Tạo các trang chỉ với các giá trị đã cho khác
              height: 2,
              width: 30,
              color: selectedIndex == index
                  ? Colors.black
                  : Colors.transparent, //ovi tri index thi moi co mau back
            )
          ],
        ),
      ),
    );
  }
}
