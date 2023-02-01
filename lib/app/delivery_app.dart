import 'package:flutter/material.dart';

class DeliveryApp extends StatelessWidget {

  const DeliveryApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: 'Delivery App',
          routes: {
            '/':(context) => Container(),
          },
       );
  }
}