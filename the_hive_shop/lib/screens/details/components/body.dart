import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_hive_shop/constants.dart';
import 'package:the_hive_shop/models/product.dart';

import 'add_to_cart.dart';
import 'card_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        //hien thi theo chieu ngang
        children: <Widget>[
          //truyen motj mang vao widget
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.32),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: KDefaultPaddin,
                      right: KDefaultPaddin),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: KDefaultPaddin/2,),
                      Description(product: product),
                      SizedBox(height: KDefaultPaddin/2,),
                      CounterWithFavBtn(),
                      SizedBox(height: KDefaultPaddin/2,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class AddToCart extends StatelessWidget {
//   const AddToCart({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//
//   final Product? product;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//           vertical: KDefaultPaddin),
//       child: Row(
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(right: KDefaultPaddin),
//             height: 50,
//             width: 58,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 border: Border.all(color: product!.color)),
//             child: IconButton(
//               icon: SvgPicture.asset(
//                   "assets/icons/add_to_cart.svg",
//               color: product!.color,),
//               onPressed: () {},
//             ),
//           ),
//           Expanded(
//             child: SizedBox(
//               height: 50,
//               child: FlatButton(
//                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//                   color: product!.color,
//                   onPressed: () {},
//                   child: Text(
//                     "Buy Now".toUpperCase(),
//                     style: TextStyle(
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CounterWithFavBtn extends StatelessWidget {
//   const CounterWithFavBtn({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         CardCounter(),
//         Container(
//           padding: EdgeInsets.all(8),
//           height: 32,
//           width: 32,
//           decoration: BoxDecoration(
//             color: Color(0xFFFF6454),
//             shape: BoxShape.circle
//           ),
//           child: SvgPicture.asset("assets/icons/heart.svg"),
//         )
//       ],
//     );
//   }
// }
//
// class CardCounter extends StatefulWidget {
//   const CardCounter({Key? key}) : super(key: key);
//
//   @override
//   _CardCounterState createState() => _CardCounterState();
// }
//
// class _CardCounterState extends State<CardCounter> {
//   int numOfItems = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//        buildOutlineButton(icon: Icons.remove,press: (){
//           if(numOfItems>1){
//             setState(() {
//               numOfItems--;
//             });
//           }
//        }),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin/2),
//           child: Text(
//            numOfItems.toString().padLeft(2,"0"),
//           style: Theme.of(context).textTheme.headline6,),
//         ),
//         buildOutlineButton(icon: Icons.add,press: (){
//           setState(() {
//             numOfItems++;
//           });
//         }),
//       ],
//     );
//   }
//
//   SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
//     return SizedBox(
//       width: 40,
//       height: 32,
//       child: OutlineButton(
//         padding: EdgeInsets.zero,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
//         ),
//         onPressed:  press,
//         child: Icon(icon),
//       ),
//     );
//   }
//
// }

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: KDefaultPaddin / 4, right: KDefaultPaddin / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle, //bo tron
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

// class ProductTitleWithImage extends StatelessWidget {
//   const ProductTitleWithImage({
//     Key? key,
//     required this.product,
//   }) : super(key: key);
//
//   final Product? product;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           const EdgeInsets.symmetric(horizontal: KDefaultPaddin),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             "Aristocratic Hand Bag",
//             style: TextStyle(color: Colors.white),
//           ),
//           Text(
//             product!.title,
//             style: Theme.of(context).textTheme.headline4!.copyWith(
//                 color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: KDefaultPaddin,),
//           Row(
//             //hien thi theo chieu
//             children: <Widget>[
//               RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(text: "Price\n"),
//                     TextSpan(
//                         text: "\$${product!.price}",
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline4!
//                             .copyWith(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold))
//                   ],
//                 ),
//               ),
//               SizedBox(width: KDefaultPaddin,),
//               Expanded(child: Image.asset(product!.image,
//                  fit: BoxFit.fitWidth,))
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
