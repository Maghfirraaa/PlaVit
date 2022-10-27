// import 'package:buttom_bar/page/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi/views/Catalog.dart';
import 'package:navigasi/views/HomeScreen.dart';
import 'package:navigasi/views/Landing.dart';
import 'package:navigasi/views/Login.dart';
import 'package:navigasi/views/Profile.dart';

class landingPage extends StatefulWidget {
  late String param;
  landingPage({Key? key, required this.param}) : super(key: key);

  @override
  _landingPageState createState() => _landingPageState(param: param);
}

class _landingPageState extends State<landingPage> {
  final String param;
  _landingPageState({required this.param});
  int _bottomNavCurrentIndex = 0;

  @override
  void initState() {
    print(param.toString());
    super.initState();
  }

  late List<Widget> container = [
    HomeScreen(),
    Catalog(param: param),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text(
            "PlaVit",
            style: TextStyle(color: Colors.white),
          ),
          // automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart,
                  color: const Color.fromARGB(255, 253, 251, 251)),
              padding: EdgeInsets.only(right: 25),
              onPressed: () {},
            )
          ],
        ),
        body: container[_bottomNavCurrentIndex],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            //di dalam listview ini terdapat beberapa widget drawable
            children: [
              UserAccountsDrawerHeader(
                //membuat gambar profil
                currentAccountPicture: Image(
                    image: NetworkImage(
                  "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/avatars/imroatus_tsaany_maghfira_L4yIgVo.png",
                )),
                //membuat nama akun
                accountName: Text(widget.param),
                //membuat nama email
                accountEmail: Text("ig:@" + widget.param),
                //memberikan background
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://st3.depositphotos.com/29618360/31748/i/450/depositphotos_317484136-free-stock-photo-green-leaves-nature-background.jpg"),
                        fit: BoxFit.cover)),
              ),
              //membuat list menu

              // Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Pengaturan"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Landing()));
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
          currentIndex: _bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Beranda'),
            BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.assignment,
                  color: Colors.green,
                ),
                icon: new Icon(
                  Icons.assignment,
                  color: Colors.grey,
                ),
                label: 'Catalog'),
            BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.people,
                  color: Colors.green,
                ),
                icon: new Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: 'Profil'),
          ],
        ));
  }
}
