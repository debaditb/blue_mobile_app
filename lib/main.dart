import 'package:blue_mobile_app/common/utils.dart';
import 'package:blue_mobile_app/app.dart';
import 'package:blue_mobile_app/discovery/discovery_customer_information.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
//      home: App(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => App(),
        '/discovery-customer-information': (context) => DiscoveryCustomerInformation(),
      },
      theme: new ThemeData(primarySwatch: HexColor.colorCustom),
    );
  }
}
