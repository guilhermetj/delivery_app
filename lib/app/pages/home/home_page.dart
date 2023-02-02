import 'package:delivery_app/app/core/ui/helpers/loader.dart';
import 'package:delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:delivery_app/app/models/product_model.dart';
import 'package:delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

import '../../core/ui/helpers/messages.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages{
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: DeliveryAppbar(),
           floatingActionButton: FloatingActionButton(onPressed: () async{
            // showLoader();
            // await Future.delayed(Duration(seconds: 2));
            // hideLoader();
            showError('Um Erro aconteceu');
            await Future.delayed(Duration(seconds: 2));
            showInfo('Um Erro aconteceu');
            await Future.delayed(Duration(seconds: 2));
            showSuccess('Um Erro aconteceu');
           }),
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