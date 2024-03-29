import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/ui/pages/product/list_page/post_list_page.dart';
import 'package:team_project/ui/widgets/buttons/custom_floating_button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloationButton(),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          // 이쪽에 각각의 페이지를 추가하면됌 - 바텀네비게이션바의 아이콘과 동일한 페이지
          ProductListPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: kCarrotColor,
        unselectedItemColor: kDarkColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              label: '홈', icon: Icon(CupertinoIcons.home)),
          const BottomNavigationBarItem(
              label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          const BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          const BottomNavigationBarItem(
              label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          const BottomNavigationBarItem(
              label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
        unselectedLabelStyle: TextStyle(fontSize: fontSmall), // 선택되지 않은 라벨의 스타일
        selectedLabelStyle: TextStyle(fontSize: fontSmall), // 선택된 라벨의 스타일
      ),
    );
  }
}
