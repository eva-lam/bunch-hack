import 'package:flutter/material.dart';
import 'package:bunch/utils/myColors.dart';
import 'package:bunch/widgets/header.dart';
import 'package:bunch/widgets/body.dart';
import 'package:bunch/utils/responsive_widget.dart';


class EmployeesProfile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //Add a container and provide a linear gradient.
    //basically use different shades of same color.
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [MyColors.white1, MyColors.white2])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[HeaderWidget(), Body(),
            Image.asset("assets/comparison.png",color: MyColors.white1,
          width: ResponsiveWidget.isSmallScreen(context)
              ? 12
              : ResponsiveWidget.isMediumScreen(context) ? 12 : 20,
          height: ResponsiveWidget.isSmallScreen(context)
              ? 12
              : ResponsiveWidget.isMediumScreen(context) ? 12 : 20,)],
          ),
        ),
      ),
    );
  }
}