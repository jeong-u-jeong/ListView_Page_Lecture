import 'package:flutter/material.dart';
import 'package:listview_page_lecture/model.dart';
import 'package:like_button/like_button.dart';

class AnimalPage extends StatefulWidget {
  const AnimalPage({Key? key, required this.animal}) : super(key: key);

  final Animal animal;

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
 bool isLiked = false;
 int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset(widget.animal.imgPath)),
            Container(height: 20,),
            Text('It lives in ' + widget.animal.location,
              style: const TextStyle(
                fontSize: 18
              ),
            ),
            Container(height: 20,),
            LikeButton(
              size: 30,
              isLiked: isLiked,
              likeCount: likeCount,
            )
          ],
        ),
      ),
    );
  }
}
