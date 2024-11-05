import 'package:couchpotato/utils/swipe.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  final String title;

  const Suggestions({Key? key, required this.title}) : super(key: key);

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.black, width: 0.0),
                ),
                child: Center(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontFamily: 'Kalnia',
                      color: Colors.amber,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 72,
                color: Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.0),
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.elliptical(150, 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Cards
          Center(
            //alignment: Alignment.Center,
            child: SizedBox(
              width: 250,
              height: 450,
              child: Stack(
                children: [
                  SwipeCard(color: Colors.amber),
                  SwipeCard(color: Colors.green),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:couchpotato/utils/swipe.dart';
// import 'package:flutter/material.dart';

// class Suggestions extends StatefulWidget {
//   final String title;

//   const Suggestions({Key? key, required this.title}) : super(key: key);

//   @override
//   State<Suggestions> createState() => _SuggestionsState();
// }

// class _SuggestionsState extends State<Suggestions> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(150.0),
//         child: Container(
//           decoration: const BoxDecoration(
//             border: Border(
//               bottom: BorderSide(color: Colors.white, width: 1.0),
//               top: BorderSide(color: Colors.black, width: 1.0),
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   border: Border.all(color: Colors.black, width: 0.0),
//                 ),
//                 height: 100,
//                 child: Center(
//                   // Display the title in the center of the first container
//                   child: Text(
//                     widget.title,
//                     style: const TextStyle(
//                       fontFamily: 'Kalnia',
//                       color: Colors.amber,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 color: Colors.black,
//                 child: Container(
//                   width: double.infinity,
//                   height: 72,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white, width: 0.0),
//                     color: Colors.white,
//                     borderRadius: const BorderRadius.vertical(
//                       top: Radius.elliptical(150, 30),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Align(
//           alignment: Alignment.topCenter,
//           child: SizedBox(
//             width: 200,
//             height: 250,
//             child: Stack(
//               children: [
//                 SwipeCard(color: Colors.amber),
//                 SwipeCard(color: Colors.green)
//               ],
//             ),
//           )),
//     );
//   }
// }
