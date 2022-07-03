import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  final String name;
  const HomePage({Key? key, required this.name}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text('${widget.name}')
          ],
        ),
      ),
    );
  }
}

//
// class HomePage extends StatefulWidget {
//   late final String name;
//   HomePage({required this.name});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           children: [
//             Text('$')
//           ],
//         ),
//       ),
//     );
//   }
// }
