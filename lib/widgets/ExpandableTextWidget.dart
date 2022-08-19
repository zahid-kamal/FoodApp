// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:ecommers/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({Key? key, required this.text}) : super(key: key);
  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;
  final double size = Dimensions.textDecription;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > size) {
      firstHalf = widget.text.substring(0, size.toInt());
      secondHalf = widget.text.substring(size.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              children: <Widget>[
                
                Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
                InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        flag ? "show more" : "show less",
                        style: TextStyle(color: Appcolors.mainColor),
                      ),
                      Icon(
                        flag ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        color: Appcolors.mainColor,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
