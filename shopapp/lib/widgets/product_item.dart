// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  const ProductItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imgUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ),
    );
  }
}
