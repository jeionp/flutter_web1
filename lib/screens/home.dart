import 'package:flutter/material.dart';
import 'package:flutter_web1/controllers/counterController.dart';
import 'package:flutter_web1/screens/other.dart';
import 'package:get/get.dart';

// class HomeScreen extends StatelessWidget {
//   // const HomeScreen({super.key});
//   final CounterController counterController = Get.put(CounterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Clicks: ${counterController.counter.value}"),
//           SizedBox(height: 10),
//           ElevatedButton(
//             onPressed: () {
//               Get.to(OtherScreen());
//             },
//             child: Text("Open Other Screen"),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counterController.increment();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clicks: ${counterController.counter.value}"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.to(OtherScreen());
              },
              child: Text("Open Other Screen"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
