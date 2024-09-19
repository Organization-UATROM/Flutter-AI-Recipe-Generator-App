import 'package:flutter/material.dart';


// For Font size
extension ResponsiveFontSize on BuildContext {
  double resFontSize(double baseFontSize) {
    /*(14/758)*MediaQuery.of(this).size.height*/
    return (baseFontSize / 758) * MediaQuery.of(this).size.height;
  }
}

// For Radial sizes such as icons and others
extension ResponsiveRadialSize on BuildContext {
  double resRadialSize(double baseRadialSize) {
    /*(14/758)*MediaQuery.of(this).size.height*/
    return (baseRadialSize / 758) * MediaQuery.of(this).size.height;
  }
}

// For height
extension ResponsiveHeight on BuildContext{
  double resHeight(double baseHeight){
    /*(14/758)*MediaQuery.of(this).size.height*/
    return (baseHeight / 758) * MediaQuery.of(this).size.height;
  }
}

// For Width
extension ResponsiveWidth on BuildContext{
  double resWidth(double baseWidth){
    /*(14/360)*MediaQuery.of(this).size.width*/
    return (baseWidth / 360) * MediaQuery.of(this).size.width;
  }
}


