import 'package:flutter/material.dart';
import 'package:the_hive_shop/screens/home/home_screen.dart';
import 'package:the_hive_shop/constants.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//Để xóa hoặc ẩn biểu ngữ gỡ lỗi Debug
      title: "Flutter vipro",
      theme: ThemeData(// Xác định độ sáng và màu sắc mặc định.
        textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColor), //định nghĩa cho các kiểu chữ
        visualDensity: VisualDensity.adaptivePlatformDensity, //Trả về mật độ hình ảnh thích ứng dựa trên defaultTargetPlatform .
      ),
      home: HomeScreen(),//hiên thị class HomeScreen
    );
  }
  
}

