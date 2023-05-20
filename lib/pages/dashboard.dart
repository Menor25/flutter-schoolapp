import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

 const Dashboard({ super.key, });


  @override
  Widget build(BuildContext context) {

    void signUserOut() {
      FirebaseAuth.instance.signOut();
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: signUserOut,
          child: const Text("Dashboard, Logout",),
        ),
      ),
    );
  }
}
