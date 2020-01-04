import 'package:flutter/material.dart';
import 'package:suplementos_app/widgets/item_main_drawer.dart';

class MainDrawer extends StatelessWidget {

  final _base_image = "assets/images/menu";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            height: 100,
            color: Colors.black,
            child: Image.asset("$_base_image/logo.png", width: 10, height: 20,),
          ),
          ItemMainDrawer( "$_base_image/Vitaminas.png", "Vitaminas"),
          ItemMainDrawer( "$_base_image/Suplementos.png", "Suplementos"),
          ItemMainDrawer( "$_base_image/+Magro.png", "+Magro"),
          ItemMainDrawer( "$_base_image/+Massa.png", "+Massa"),
          ItemMainDrawer( "$_base_image/Nutrientes.png", "Nutrientes"),
          ItemMainDrawer( "$_base_image/WheyProtein.png", "Whey Protein"),
          ItemMainDrawer( "$_base_image/Anabolizantes.png", "Anabolizantes"),
          ItemMainDrawer( "$_base_image/CalculosDeMassa.png", "Cálculos"),
        ],
      ),
    );
  }

}
