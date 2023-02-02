import 'package:delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:delivery_app/app/models/product_model.dart';
import 'package:delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: DeliveryAppbar(),
           body: Column(
            children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index){
                  return DeliveryProductTile(product: ProductModel(id: 0, name: 'Lanche X', description: 'Lanche acompanha pão, calabresa, vinagrete, queijo e maionese', price: 15.0, image: 'https://i.ytimg.com/vi/0Fea2vwfnN8/maxresdefault.jpg'),);
                },
              ),
            )
           ]),
       );
  }
}