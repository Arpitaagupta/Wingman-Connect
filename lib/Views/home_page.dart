import 'package:flutter/material.dart';
import 'package:project/Authentication/login.dart';
import 'package:project/Views/about_us.dart';
import 'package:project/Views/chat_page.dart';
import 'package:project/Views/edit_profile.dart';
import 'package:project/Views/favourites.dart';
import 'package:project/Views/settings.dart';
import 'package:project/misc/colors.dart';
import 'package:project/widgets/app_large_text.dart';
import 'package:project/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> icons = [
    Container(
      width: 80,
      height: 80,
      child: Builder(
        builder: (BuildContext context) {
          return TextButton(
            onPressed: () {
              // Navigate to the AboutUsPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color(0xFFBBDEFB),
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.message_outlined,
                size: 50,
                color: Color(0xFF1565C0),
              ),
            ),
          );
        },
      ),
    ),
    Container(
      width: 80,
      height: 80,
      child: TextButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.amber.withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.people,
            size: 50,
            color: Colors.amber,
          ),
        ),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      child: TextButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 147, 220, 165).withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.currency_rupee,
            size: 50,
            color: Color.fromARGB(255, 50, 120, 43),
          ),
        ),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      child: TextButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.lightBlueAccent.withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.edit_calendar,
            size: 50,
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      child: TextButton(
        onPressed: () {
          // Add your onPressed logic here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 199, 147, 241).withOpacity(0.2),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.location_pin,
            size: 50,
            color: Color.fromARGB(255, 130, 55, 216),
          ),
        ),
      ),
    ),
    Container(
      width: 80,
      height: 80,
      child: Builder(
        builder: (BuildContext context) {
          return TextButton(
            onPressed: () {
              // Navigate to the AboutUsPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 146, 63, 112).withOpacity(0.2),
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.cabin,
                size: 50,
                color: Color.fromARGB(255, 116, 13, 47),
              ),
            ),
          );
        },
      ),
    ),
  ];

  List iconNames = [
    "Chat",
    "Community",
    "Donate",
    "Book Slots",
    "Location",
    "About Us",
  ];

  List images = ["women.png", "child.png", "hand.png"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: AppLargeText(
          text: "WingMan Connect",
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/wingman_logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Colors.deepPurple.withOpacity(0.2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Swasti',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        "assets/swasti.png"), // Set your image path here
                  ),
                  SizedBox(width: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Swasti Pandey',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 50), // Add a SizedBox for spacing
                      InkWell(
                        onTap: () {
                          // Handle edit action
                        },
                        child: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Edit Profile'),
              leading: Icon(Icons.person), // Profile icon
              onTap: () {
                // Navigate to profile screen
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourites'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FavoritesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings screen
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () {
                // Navigate to the login screen
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            //tab bar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20, right: 20),
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator:
                        CircleTabIndicator(color: Colors.deepPurple, radius: 4),
                    tabs: [
                      Tab(
                        text: "Gallery",
                      ),
                      Tab(
                        text: "Contributions",
                      ),
                      Tab(
                        text: "NearBy NGOs",
                      )
                    ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    //itemCount: 3,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/${images[index]}"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  Text("Hi"),
                  Text("There"),
                  //Text("Bye"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore more",
                    size: 22,
                  ),
                  AppText(
                    text: "See all",
                    color: AppColor.textColor1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          icons[index],
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                              text: iconNames[index],
                              color: AppColor.textColor2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
//old 