import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelogram/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
//        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.black,
            )),
            Tab(
                icon: Icon(
              Icons.search,
              color: Colors.grey,
            )),
            Tab(
                icon: Icon(
              Icons.graphic_eq,
              color: Colors.grey,
            )),
            Tab(
                icon: Icon(
              Icons.add_circle_outline,
              color: Colors.grey,
            )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'travel',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -2,
                        color: Colors.grey[600]),
                  ),
                  Icon(
                    Icons.explore,
                    size: 20,
                    color: Colors.grey[600],
                  ),
                  Text(
                    'gram',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -2,
                        color: Colors.grey[600]),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      //rout to profile page
                    },
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Profile()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(
                                'images/daniel.jpg',
                              ),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
              child: Container(
                height: 420,
                width: double.infinity,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10,right: 10),
                              child: IconButton(
                                icon: Icon(Icons.navigation,
                                    color: Colors.blue[600], size: 50),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Text(
                                      '  MALDIVES TRIPS 2018',
                                      style: TextStyle(
                                        fontSize: 12,
                                        letterSpacing: 1.5,
                                        fontFamily: 'Montserrat',
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '  Add an Update',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Expanded(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    size: 25,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {}),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'FROM THIS COMMUNITY',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                color: Colors.grey),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Montserrat',
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      child: imageGrid(context),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _photoDetails(context),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: imageGrid(context),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _photoDetails(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageGrid(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 225,
          width: MediaQuery.of(context).size.width / 2 + 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              image: DecorationImage(
                image: AssetImage('images/oliver.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          width: 2,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 111,
                width: MediaQuery.of(context).size.width / 2 - 72,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(15)),
                  image: DecorationImage(
                    image: ExactAssetImage('images/alex.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                height: 111,
                width: MediaQuery.of(context).size.width / 2 - 72,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15)),
                    image: DecorationImage(
                      image: AssetImage('images/jakob.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _photoDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Montserrat'),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Teresa Soto added 52 Photos',
                    style: TextStyle(
                        fontSize: 13, color: Colors.grey, fontFamily: 'Montserrat'),
                  ),
                  SizedBox(width: 4,),
                  Icon(
                    Icons.timer,
                    size: 10,
                    color: Colors.black,
                  ),
                  Text(
                    '2 hr',
                    style: TextStyle(
                        fontSize: 13, color: Colors.grey, fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ]),
        SizedBox(
          width: 5,
        ),
        Expanded(
            child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 25,
                  color: Colors.grey,
                ),
                onPressed: () {})),
        Expanded(
            child: IconButton(
                icon: Icon(
                  Icons.near_me,
                  size: 25,
                  color: Colors.grey,
                ),
                onPressed: () {})),
        Expanded(
            child: IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 25,
                  color: Colors.grey,
                ),
                onPressed: () {})),
      ],
    );
  }
}
