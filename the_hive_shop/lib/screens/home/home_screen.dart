import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_hive_shop/constants.dart';
import 'package:the_hive_shop/screens/home/components/body.dart';

//Stateless widget không có state. Nó không chấp nhận sự thay đổi bên trong nó.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    //Thực hiện cấu trúc bố cục hình ảnh material design cơ bản.
    return AppBar(
      // là một thanh ngang thường được hiển thị ở đầu ứng dụng
      backgroundColor: Colors.white,
      elevation: 0, //Tọa độ z của Hộp thoại này .
      leading: IconButton(
        //Tiện ích con để đặt ở đầu thanh điều hướng
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              //By default our icon color is white
              color: KTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              //By default our icon color is white
              color: KTextColor,
            )),
        SizedBox(width: KDefaultPaddin / 2)
      ],
    );
  }
}
