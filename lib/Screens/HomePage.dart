import 'package:flutter/material.dart';
import 'package:task_management/Screens/MenuPage.dart';
import 'package:task_management/Screens/profilepage.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:task_management/widgets/prenium.dart';
import 'package:task_management/widgets/tasks.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
  ];
  int activeIndex = 0;
  bool isHomePage = true;
  // int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
              backgroundColor: kWhite,
              selectedItemColor: kDark,
              unselectedItemColor: Colors.grey.shade400,
              // currentIndex: 0,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_rounded,
                    size: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_rounded,
                    size: 30,
                  ),
                  label: 'Home',
                ),
              ],
              onTap: (index) {
                setState(() {
                  activeIndex = index;
                });
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: kDark,
        child: Icon(
          Icons.add,
          color: klightgrey,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[activeIndex],
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kWhite,
    elevation: 0,
    title: Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 10, top: 5),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: klightgrey, borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/user.png'),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        'Hello, Toan',
        style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 22,
            fontWeight: FontWeight.bold),
      )
    ]),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.more_vert,
          color: Colors.grey.shade600,
          size: 35,
        ),
        onPressed: () {
          Navigator.push(context as BuildContext,
              MaterialPageRoute(builder: (context) => menuPage()));
        },
      ),
      // IconButton(
      //   icon: Icon(
      //     Icons.search,
      //     color: Colors.grey.shade600,
      //   ),
      //   onPressed: () {},
      // ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding:
              EdgeInsets.only(right: 8.0, left: 8.0, top: 20.0, bottom: 10.0),
          child: GoPrenium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 26,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(child: Tasks())
      ],
    );
  }
}
