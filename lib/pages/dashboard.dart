import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {

 const Dashboard({ super.key, });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<Widget>_tabs = const [
    Center(child: Text("Dashboard"),),
    Center(child: Text("Profile"),),
  ];

  @override
  Widget build(BuildContext context) {

    void signUserOut() {
      var signOut = FirebaseAuth.instance.signOut();
    }
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_rounded),
        leadingWidth: 100,
        title: const Text('Dashboard'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
              onTap: signUserOut,
                child: Icon(Icons.logout),
            ),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        onTap: (index) {
          setState((){
            _selectedIndex = index;
          });
        },
      ),
      body:
          _tabs[_selectedIndex],

    );
  }
}
