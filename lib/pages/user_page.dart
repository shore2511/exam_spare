// // import 'package:flutter/material.dart';
// //
// //
// // class UserPage extends StatefulWidget {
// //   const UserPage({super.key});
// //
// //   @override
// //   State<UserPage> createState() => _UserPageState();
// // }
// //
// // class _UserPageState extends State<UserPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //
// //     );
// //   }
// // }
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'shared_state.dart';
// import 'exam_page.dart';
//
// class UserPage extends StatelessWidget {
//   const UserPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User Page'),
//       ),
//       body: Center(
//         child: Card(
//           child: InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ExamPage(
//                     examName: SharedState.examName,
//                     countdownTime: SharedState.countdownTime,
//                     questions: SharedState.questions,
//                   ),
//                 ),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text('Exam: ${SharedState.examName}'),
//                   Text('Time: ${SharedState.countdownTime} minutes'),
//                   const SizedBox(height: 10),
//                   const Text('Start Exam'),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'shared_state.dart';
import 'exam_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  void _startExam(int index) {
    final exam = SharedState.exams[index];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExamPage(
          examName: exam['examName'],
          countdownTime: exam['countdownTime'],
          questions: List<Map<String, String>>.from(exam['questions']),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: ListView.builder(
        itemCount: SharedState.exams.length,
        itemBuilder: (context, index) {
          final exam = SharedState.exams[index];
          return Card(
            child: ListTile(
              title: Text(exam['examName']),
              subtitle: Text('Time: ${exam['countdownTime']} minutes'),
              trailing: ElevatedButton(
                onPressed: () => _startExam(index),
                child: const Text('Start Exam'),
              ),
            ),
          );
        },
      ),
    );
  }
}