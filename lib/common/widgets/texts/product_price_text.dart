import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
       this.currencySign='\$',
      required this.price,
       this.isLarge=false,
       this.maxLines=1,
       this.lineThrough=false
      });

  final String currencySign, price;
  final bool isLarge;
  final int maxLines;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
     currencySign+price,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style:isLarge?
        Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough?TextDecoration.lineThrough:null)
       : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough?TextDecoration.lineThrough:null),
    );
  }
}
