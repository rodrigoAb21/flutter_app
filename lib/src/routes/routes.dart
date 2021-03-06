import 'package:flutter/material.dart';

import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/pages/avatar_page.dart';
import 'package:flutter_app/src/pages/card_page.dart';
import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder> {
    '/' : ( BuildContext context ) => HomePage(),
    'alert' : ( BuildContext context ) => AlertPage(),
    'avatar' : ( BuildContext context ) => AvatarPage(),
    'card' : ( BuildContext context ) => CardPage(),
    'inputs' : ( BuildContext context ) => InputPage(),
  };
}