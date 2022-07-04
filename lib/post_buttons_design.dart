import 'package:flutter/material.dart';

class PostButtonsDesign extends StatelessWidget {
  String imageUrl;
  String btnText;
  PostButtonsDesign({required this.btnText ,required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:(){},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsetsDirectional.only(end: 5),
              child: Image.asset(
                  imageUrl,
                height: 30,
                width: 30,

              ),
            ),
            Text(
              btnText,
              style: TextStyle(
                  color: Colors.grey
              ),
            )
          ],
        )
    );
  }
}
