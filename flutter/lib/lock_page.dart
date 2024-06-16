import 'package:flutter/material.dart';

class LockPage extends StatelessWidget {
  const LockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: Text(
          'Piciary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: LockPageListView(),
      ),
    );
  }
}

class LockPageListView extends StatelessWidget {
  const LockPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      shrinkWrap: true,
      primary: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: EdgeInsets.all(10), // 각 컨테이너의 내부 여백
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey), // 테두리 색상을 설정합니다.
            borderRadius: BorderRadius.circular(10), // 테두리의 모서리를 둥글게 만듭니다.
          ),
          child: ListTile(
            title: Text('diary ${index + 1}'),
            onTap: () {},
          ),
        );
      },
    );
  }
}
