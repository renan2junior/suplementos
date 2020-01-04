import 'package:flutter/material.dart';
import 'package:suplementos_app/pages/page_vitaminas.dart';
import 'package:suplementos_app/utils/nav.dart';

class ItemMainDrawer extends StatelessWidget {
  String image;
  String title;

  ItemMainDrawer(this.image, this.title);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Image.asset(
            image,
            width: 30,
          ),
          onTap: () {
            _onPush(context, PageVitaminas());
          },
        ),
        Container(
          child: Divider(
            height: 1,
            color: Colors.black,
            thickness: 0,
          ),
        )
      ],
    );
  }

  _onPush(context, page) async {
     String s = await push(context, page);
     print(">>> $s");
  }
}
