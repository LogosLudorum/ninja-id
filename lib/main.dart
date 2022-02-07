import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('my first app'),
//         centerTitle: true,
//       ),
//       body: Center(
//         /*
//         this Center widget functions to center the text hello logos
//         we could do "body: Text('hello logos')" directly but it would not be centered
//         now since we have nested the Text() widget within the Center function, we have to specify
//         a property for the nested Text() widget, that's why the property "child" is used
//         we can't just say Text() coz of the issue of named arguments
//         */
//         child: Text('hello logos'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: null,
//         child: Text('click'),
//       ),
//     ),
//   ));
// }

// //video #10 - containers and padding
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('App bar'),
//           centerTitle: true,
//         ),
//         body: Container(
//           margin: EdgeInsets.all(10.0),
//           padding: EdgeInsets.all(40.0),
//           color: Colors.grey,
//           child: Text('I am here'),
//         ),
//         floatingActionButton: FloatingActionButton.large(
//           onPressed: () {},
//           child: Text('click me'),
//         ),
//       ),
//     );
//   }
// }

// // video #10 - containers and padding
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       appBar: AppBar(
//         title: Text('App bar'),
//         centerTitle: true,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10.0),
//         child: Text('hello'),
//         color: Colors.blue,
//       ),
//       floatingActionButton: ElevatedButton(
//         onPressed: () {},
//         child: Text('click'),
//       ),
//     ));
//   }
// }

//////////////////////////////////////////////////////////////////////////////

// // video #11 and #12 - rows and columns

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('this is appbar'),
//           shadowColor: Colors.cyan[200],
//         ),
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             // Column(
//             //   children: <Widget>[
//             //     Container(
//             //       color: Colors.amber[100],
//             //       child: Text('col 1'),
//             //       padding: EdgeInsets.all(20.0),
//             //     ),
//             //     Container(
//             //       color: Colors.amber[100],
//             //       child: Text('col 2'),
//             //       padding: EdgeInsets.all(20.0),
//             //     ),
//             //   ],
//             // ),
//             Container(
//               color: Colors.amber,
//               child: Text('one'),
//               margin: EdgeInsets.all(10.0),
//               padding: EdgeInsets.all(10.0),
//             ),
//             Container(
//               color: Colors.green,
//               child: Text('two'),
//               padding: EdgeInsets.all(10.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////

// video #15 - ninja ID app

void main() => runApp(MaterialApp(home: NinjaID()));

class NinjaID extends StatelessWidget {
  const NinjaID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Ninja ID Card'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                radius: 50.0,
              ),
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Chun-Li',
              style: TextStyle(
                color: Colors.amberAccent[400],
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent[400],
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'EMAIL',
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'chun.li@net.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
