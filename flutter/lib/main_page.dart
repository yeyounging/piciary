import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

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
        actions: [
          Image.asset(
            'assets/piciary_icon.png',
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          )
        ],
      ),
      body: Center(
        child: Expanded(
          child: TableScreenCalendar(),
        ),
      ),
      drawer: DrawerNavigator(),
    );
  }
}

// DrawerNavigator UI 로직
class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/user_image.png'),
            ),
            accountName: Text('user1'),
            accountEmail: Text('12345@gmail.com'),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              color: Color.fromARGB(255, 245, 222, 179),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            iconColor: Colors.teal,
            title: Text('back to main'),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: Colors.teal,
            title: Text('setting'),
            onTap: () {},
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.lock_person),
            iconColor: Colors.teal,
            title: Text('go lock page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/lock');
            },
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.delete_forever),
            iconColor: Colors.teal,
            title: Text('go trashcan page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/safe');
            },
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}

// Calendar UI 로직
class TableScreenCalendar extends StatefulWidget {
  const TableScreenCalendar({Key? key}) : super(key: key);

  @override
  _TableScreenCalendarState createState() => _TableScreenCalendarState();
}

class _TableScreenCalendarState extends State<TableScreenCalendar> {
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    // 초기 선택 날짜 설정
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ko_KR',
      focusedDay: DateTime.now(),
      firstDay: DateTime(2020, 1, 1),
      lastDay: DateTime(2030, 12, 31),
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),
      calendarStyle: CalendarStyle(
        outsideDaysVisible: false,
        selectedTextStyle: const TextStyle(
          color: const Color(0xFFFAFAFA),
          fontSize: 16.0,
        ),
        weekendTextStyle: TextStyle(color: Colors.red),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        // 날짜가 선택될 때마다 호출되는 콜백
        setState(
          () {
            _selectedDay = selectedDay;
          },
        );

        // 여기에 선택된 날짜에 대한 추가적인 작업을 수행할 수 있습니다.
        // 예를 들어, 선택된 날짜에 대한 정보를 출력하거나 다른 동작을 수행할 수 있습니다.
        print('Selected Day: $_selectedDay');
      },
    );
  }
}
