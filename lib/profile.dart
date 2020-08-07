import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelogram/provider.dart';
import 'package:travelogram/user.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Profile2 profile = ProfileProvider1.getProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 35,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 35,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(
                        'images/daniel.jpg',
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      profile.user.name,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                          color: Colors.grey,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Iraq , Samawah',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('${profile.followers}K',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  color: Colors.black)),
                          Text('FOLLOWERS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(profile.trips.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  color: Colors.black)),
                          Text('TRIPS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(profile.bucketList.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  color: Colors.black)),
                          Text('BUCKET LIST',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 3),
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.grey,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.grey,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage('images/oliver.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage('images/alex.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
