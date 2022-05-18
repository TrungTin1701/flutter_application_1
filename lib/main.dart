import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'hotelcart.dart';
import 'homepage.dart';
import 'profile.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData();
    var materialApp = MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: themeData,
      home: const MyHomePage(title: 'Booking Hotel Room'),
    );
    return materialApp;
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("BOOKING HOTEL ROOM"),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
        backgroundColor: Color.fromARGB(255, 59, 160, 175),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultTabController(
              length: 3,
              child: Expanded(
                  child: Column(
                children: [
                  Flexible(
                    child: Builder(builder: (context) {
                      return TabBar(
                          indicatorColor: Color.fromARGB(255, 184, 70, 36),
                          unselectedLabelColor:
                              Color.fromARGB(255, 137, 122, 122),
                          labelColor: Color(0xFFFE8C68),
                          padding: const EdgeInsets.only(top: 0, bottom: 0),
                          tabs: [
                            Tab(
                              text: "Tất cả",
                            ),
                            Tab(
                              text: "Đang chờ phục vụ",
                            ),
                            Tab(
                              text: "Đang phục vụ",
                            )
                          ]);
                    }),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: TabBarView(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Container(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              HotelCard('/image/hotel2.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              HotelCard('/image/hotel3.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              HotelCard('/image/hotel4.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Container(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              HotelCard('/image/hotel2.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              HotelCard('/image/hotel3.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              HotelCard('/image/hotel4.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Container(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              HotelCard('/image/hotel2.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              // ignore: prefer_const_constructors
                              HotelCard('/image/hotel3.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                              HotelCard('/image/hotel4.jpg', 'Dat lat pho',
                                  '400 Ung Van khiem', context),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              )))
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int select = 0;
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Home1(),
    Home(),
    MainProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    var scaffold = Scaffold(
      body: Center(child: _widgetOptions.elementAt(select)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hotel',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: select,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          setState(() {
            select = index;
          });
        },
      ),
    );
    return scaffold;
  }
}
