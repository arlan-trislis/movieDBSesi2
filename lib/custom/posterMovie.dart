import 'package:flutter/material.dart';

class PosterMovie extends StatelessWidget {
  final int selectPage;
  final int index;
  final String imgUrl;

  const PosterMovie({Key key, this.selectPage, this.index, this.imgUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: selectPage == index ? 100 : 130, horizontal: 16),
      child: Hero(
        tag: "$index",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            "$imgUrl",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
