import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';

class BoardWriteBody extends StatelessWidget {
  const BoardWriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "완료",
              style: TextStyle(color: kHintColor, fontSize: fontMedium),
            ),
          )
        ],
        automaticallyImplyLeading: true,
        title: Text(
          "동네 생활 글쓰기",
          style: TextStyle(color: kDarkColor),
        ),
      ),
      body: Center(
        child: Text("BoardWriteBody"),
      ),
    );
  }
}
