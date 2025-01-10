import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin.dart';  // Import the Signin screen.

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add an AppBar with a back button
      appBar: AppBar(
        title: Text("Dashboard"),

        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // You can customize this color.
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);  // This pops the current screen and goes back to Signin.
          },
        ),
      ),
      body: Center(
        child: Text(
          "Dashboard",
          style: GoogleFonts.pacifico(
              fontWeight: FontWeight.bold, fontSize: 50, color: Color(
              0xEAB81E58)),
        ),
      ),
    );
  }
}
