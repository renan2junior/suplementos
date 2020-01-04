import 'package:flutter/material.dart';
import 'package:suplementos_app/widgets/main_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Colors.red,
      height: 400,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    print("Item $index");
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Image.asset(
                "assets/images/menu/logo.png",
                width: 40,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Image.asset("assets/images/menu/Promocao.png"),
                onPressed: () => true,
              ),
              IconButton(
                icon: Image.asset("assets/images/menu/icon_tv.png"),
                onPressed: () => true,
              ),
            ],
          ),
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(34,34,34,1),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart,),
                title: Text("Lojas"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Profissionais"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text("Agenda"),
              )
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
          ),
          drawer: MainDrawer()),
    );
  }


}

