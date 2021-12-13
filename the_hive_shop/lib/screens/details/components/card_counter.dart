import 'package:flutter/material.dart';

import '../../../constants.dart';


class CardCounter extends StatefulWidget {
  const CardCounter({Key? key}) : super(key: key);

  @override
  _CardCounterState createState() => _CardCounterState();
}

class _CardCounterState extends State<CardCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(icon: Icons.remove,press: (){
          if(numOfItems>1){
            setState(() {
              numOfItems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPaddin/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,),
        ),
        buildOutlineButton(icon: Icons.add,press: (){
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
        ),
        onPressed:  press,
        child: Icon(icon),
      ),
    );
  }

}