import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:team_project/ui/pages/write_board/widgets/board_write_body.dart';

class BoardWritePage extends StatelessWidget {
  const BoardWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardWriteBody(),
    );
  }
}
