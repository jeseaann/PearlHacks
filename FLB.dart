import 'package:flutter/material.dart';

const Color turquoise = Color(0xff396071);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            Color(0xff396071), // prints the background color
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Welcome to FLB"),
        ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[ // expects a list of widgets
          Text(( "This app was made in mind of black history month, as Black and indigenous historically don't have easy access to financial information."),
           ),
          ElevatedButton(
          onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const InterestsPage()),
             );
          },
          child: Text('Interests'),
        )
       ]
    )

        );
  }
}

class InterestsPage extends StatelessWidget {
  @override
    const InterestsPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Interests Page"),
        ),
        body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[ // expects a list of widgets
          Text(( "This app was made in mind of black history month, as Black and indigenous historically don't have easy access to financial information."),
           ),
          ElevatedButton(
          onPressed: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => const InterestsPage()),
             );
          },
          child: Text('Interests'),
        )
       ]
    )

        );
  }
}
