// // // // // //
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'create_exam_page.dart';
// // // // // //
// // // // // // class AdminPage extends StatelessWidget {
// // // // // //   const AdminPage({super.key});
// // // // // //
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final TextEditingController _examNameController = TextEditingController();
// // // // // //     final TextEditingController _countdownTimeController = TextEditingController();
// // // // // //
// // // // // //     void _showExamDialog() {
// // // // // //       showDialog(
// // // // // //         context: context,
// // // // // //         builder: (context) {
// // // // // //           return AlertDialog(
// // // // // //             title: const Text('Create Exam'),
// // // // // //             content: Column(
// // // // // //               mainAxisSize: MainAxisSize.min,
// // // // // //               children: [
// // // // // //                 TextField(
// // // // // //                   controller: _examNameController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Exam Name'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _countdownTimeController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // // // // //                   keyboardType: TextInputType.number,
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //             actions: [
// // // // // //               TextButton(
// // // // // //                 onPressed: () {
// // // // // //                   Navigator.of(context).pop();
// // // // // //                   Navigator.push(
// // // // // //                     context,
// // // // // //                     MaterialPageRoute(
// // // // // //                       builder: (context) => CreateExamPage(
// // // // // //                         examName: _examNameController.text,
// // // // // //                         countdownTime: _countdownTimeController.text,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   );
// // // // // //                 },
// // // // // //                 child: const Text('Create'),
// // // // // //               ),
// // // // // //               TextButton(
// // // // // //                 onPressed: () {
// // // // // //                   Navigator.of(context).pop();
// // // // // //                 },
// // // // // //                 child: const Text('Cancel'),
// // // // // //               ),
// // // // // //             ],
// // // // // //           );
// // // // // //         },
// // // // // //       );
// // // // // //     }
// // // // // //
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: const Text('Admin Page'),
// // // // // //       ),
// // // // // //       body: Center(
// // // // // //         child: Card(
// // // // // //           child: InkWell(
// // // // // //             onTap: _showExamDialog,
// // // // // //             child: const Padding(
// // // // // //               padding: EdgeInsets.all(16.0),
// // // // // //               child: Text('Create Exam Page'),
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // //
// // // // //
// // // // //
// // // // //
// // // // //
// // // // // import 'package:flutter/material.dart';
// // // // // import 'create_exam_page.dart';
// // // // // import 'shared_state.dart';
// // // // //
// // // // // class AdminPage extends StatelessWidget {
// // // // //   const AdminPage({super.key});
// // // // //
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final TextEditingController _examNameController = TextEditingController();
// // // // //     final TextEditingController _countdownTimeController = TextEditingController();
// // // // //
// // // // //     void _showExamDialog() {
// // // // //       showDialog(
// // // // //         context: context,
// // // // //         builder: (context) {
// // // // //           return AlertDialog(
// // // // //             title: const Text('Create Exam'),
// // // // //             content: Column(
// // // // //               mainAxisSize: MainAxisSize.min,
// // // // //               children: [
// // // // //                 TextField(
// // // // //                   controller: _examNameController,
// // // // //                   decoration: const InputDecoration(labelText: 'Exam Name'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _countdownTimeController,
// // // // //                   decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // // // //                   keyboardType: TextInputType.number,
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //             actions: [
// // // // //               TextButton(
// // // // //                 onPressed: () {
// // // // //                   SharedState.examName = _examNameController.text;
// // // // //                   SharedState.countdownTime = _countdownTimeController.text;
// // // // //                   Navigator.of(context).pop();
// // // // //                   Navigator.push(
// // // // //                     context,
// // // // //                     MaterialPageRoute(
// // // // //                       builder: (context) => CreateExamPage(
// // // // //                         examName: _examNameController.text,
// // // // //                         countdownTime: _countdownTimeController.text,
// // // // //                       ),
// // // // //                     ),
// // // // //                   );
// // // // //                 },
// // // // //                 child: const Text('Create'),
// // // // //               ),
// // // // //               TextButton(
// // // // //                 onPressed: () {
// // // // //                   Navigator.of(context).pop();
// // // // //                 },
// // // // //                 child: const Text('Cancel'),
// // // // //               ),
// // // // //             ],
// // // // //           );
// // // // //         },
// // // // //       );
// // // // //     }
// // // // //
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text('Admin Page'),
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Card(
// // // // //           child: InkWell(
// // // // //             onTap: _showExamDialog,
// // // // //             child: const Padding(
// // // // //               padding: EdgeInsets.all(16.0),
// // // // //               child: Text('Create Exam Page'),
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // //
// // // //
// // // //
// // // //
// // // // import 'package:flutter/material.dart';
// // // // import 'create_exam_page.dart';
// // // // import 'shared_state.dart';
// // // //
// // // // class AdminPage extends StatefulWidget {
// // // //   const AdminPage({super.key});
// // // //
// // // //   @override
// // // //   State<AdminPage> createState() => _AdminPageState();
// // // // }
// // // //
// // // // class _AdminPageState extends State<AdminPage> {
// // // //   final TextEditingController _examNameController = TextEditingController();
// // // //   final TextEditingController _countdownTimeController = TextEditingController();
// // // //
// // // //   void _showExamDialog() {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) {
// // // //         return AlertDialog(
// // // //           title: const Text('Create Exam'),
// // // //           content: Column(
// // // //             mainAxisSize: MainAxisSize.min,
// // // //             children: [
// // // //               TextField(
// // // //                 controller: _examNameController,
// // // //                 decoration: const InputDecoration(labelText: 'Exam Name'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _countdownTimeController,
// // // //                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // // //                 keyboardType: TextInputType.number,
// // // //               ),
// // // //             ],
// // // //           ),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 final newExam = {
// // // //                   'examName': _examNameController.text,
// // // //                   'countdownTime': _countdownTimeController.text,
// // // //                   'questions': [],
// // // //                 };
// // // //                 setState(() {
// // // //                   SharedState.exams.add(newExam);
// // // //                 });
// // // //                 Navigator.of(context).pop();
// // // //                 Navigator.push(
// // // //                   context,
// // // //                   MaterialPageRoute(
// // // //                     builder: (context) => CreateExamPage(
// // // //                       examName: _examNameController.text,
// // // //                       countdownTime: _countdownTimeController.text,
// // // //                       questions: [],
// // // //                     ),
// // // //                   ),
// // // //                 );
// // // //               },
// // // //               child: const Text('Create'),
// // // //             ),
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //               child: const Text('Cancel'),
// // // //             ),
// // // //           ],
// // // //         );
// // // //       },
// // // //     );
// // // //   }
// // // //
// // // //   void _editExam(int index) {
// // // //     final exam = SharedState.exams[index];
// // // //     Navigator.push(
// // // //       context,
// // // //       MaterialPageRoute(
// // // //         builder: (context) => CreateExamPage(
// // // //           examName: exam['examName'],
// // // //           countdownTime: exam['countdownTime'],
// // // //           questions: List<Map<String, String>>.from(exam['questions']),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('Admin Page'),
// // // //       ),
// // // //       body: Column(
// // // //         children: [
// // // //           Center(
// // // //             child: Card(
// // // //               child: InkWell(
// // // //                 onTap: _showExamDialog,
// // // //                 child: const Padding(
// // // //                   padding: EdgeInsets.all(16.0),
// // // //                   child: Text('Create Exam Page'),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           Expanded(
// // // //             child: ListView.builder(
// // // //               itemCount: SharedState.exams.length,
// // // //               itemBuilder: (context, index) {
// // // //                 final exam = SharedState.exams[index];
// // // //                 return ListTile(
// // // //                   title: Text(exam['examName']),
// // // //                   subtitle: Text('Time: ${exam['countdownTime']} minutes'),
// // // //                   onTap: () => _editExam(index),
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // //
// // //
// // //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'create_exam_page.dart';
// // // import 'shared_state.dart';
// // //
// // // class AdminPage extends StatefulWidget {
// // //   const AdminPage({super.key});
// // //
// // //   @override
// // //   State<AdminPage> createState() => _AdminPageState();
// // // }
// // //
// // // class _AdminPageState extends State<AdminPage> {
// // //   final TextEditingController _examNameController = TextEditingController();
// // //   final TextEditingController _countdownTimeController = TextEditingController();
// // //
// // //   void _showExamDialog() {
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Create Exam'),
// // //           content: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               TextField(
// // //                 controller: _examNameController,
// // //                 decoration: const InputDecoration(labelText: 'Exam Name'),
// // //               ),
// // //               TextField(
// // //                 controller: _countdownTimeController,
// // //                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // //                 keyboardType: TextInputType.number,
// // //               ),
// // //             ],
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 final countdownTime = _countdownTimeController.text;
// // //                 if (int.tryParse(countdownTime) == null) {
// // //                   // Show error if countdown time is not a valid number
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     const SnackBar(content: Text('Please enter a valid countdown time')),
// // //                   );
// // //                   return;
// // //                 }
// // //                 final newExam = {
// // //                   'examName': _examNameController.text,
// // //                   'countdownTime': countdownTime,
// // //                   'questions': [],
// // //                 };
// // //                 setState(() {
// // //                   SharedState.exams.add(newExam);
// // //                 });
// // //                 Navigator.of(context).pop();
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => CreateExamPage(
// // //                       examName: _examNameController.text,
// // //                       countdownTime: countdownTime,
// // //                       questions: [],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //               child: const Text('Create'),
// // //             ),
// // //             TextButton(
// // //               onPressed: () {
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('Cancel'),
// // //             ),
// // //           ],
// // //         );
// // //       },
// // //     );
// // //   }
// // //
// // //   void _editExam(int index) {
// // //     final exam = SharedState.exams[index];
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(
// // //         builder: (context) => CreateExamPage(
// // //           examName: exam['examName'],
// // //           countdownTime: exam['countdownTime'],
// // //           questions: List<Map<String, String>>.from(exam['questions']),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Admin Page'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Center(
// // //             child: Card(
// // //               child: InkWell(
// // //                 onTap: _showExamDialog,
// // //                 child: const Padding(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   child: Text('Create Exam Page'),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: SharedState.exams.length,
// // //               itemBuilder: (context, index) {
// // //                 final exam = SharedState.exams[index];
// // //                 return ListTile(
// // //                   title: Text(exam['examName']),
// // //                   subtitle: Text('Time: ${exam['countdownTime']} minutes'),
// // //                   onTap: () => _editExam(index),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// // // import 'package:flutter/material.dart';
// // // import 'create_exam_page.dart';
// // // import 'shared_state.dart';
// // //
// // // class AdminPage extends StatefulWidget {
// // //   const AdminPage({super.key});
// // //
// // //   @override
// // //   State<AdminPage> createState() => _AdminPageState();
// // // }
// // //
// // // class _AdminPageState extends State<AdminPage> {
// // //   final TextEditingController _examNameController = TextEditingController();
// // //   final TextEditingController _countdownTimeController = TextEditingController();
// // //
// // //   void _showExamDialog() {
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Create Exam'),
// // //           content: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               TextField(
// // //                 controller: _examNameController,
// // //                 decoration: const InputDecoration(labelText: 'Exam Name'),
// // //               ),
// // //               TextField(
// // //                 controller: _countdownTimeController,
// // //                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // //                 keyboardType: TextInputType.number,
// // //               ),
// // //             ],
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 final countdownTime = _countdownTimeController.text;
// // //                 if (int.tryParse(countdownTime) == null) {
// // //                   // Show error if countdown time is not a valid number
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     const SnackBar(content: Text('Please enter a valid countdown time')),
// // //                   );
// // //                   return;
// // //                 }
// // //                 final newExam = {
// // //                   'examName': _examNameController.text,
// // //                   'countdownTime': countdownTime,
// // //                   'questions': [],
// // //                 };
// // //                 setState(() {
// // //                   SharedState.exams.add(newExam);
// // //                 });
// // //                 Navigator.of(context).pop();
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => CreateExamPage(
// // //                       examName: _examNameController.text,
// // //                       countdownTime: countdownTime,
// // //                       questions: [],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //               child: const Text('Create'),
// // //             ),
// // //             TextButton(
// // //               onPressed: () {
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('Cancel'),
// // //             ),
// // //           ],
// // //         );
// // //       },
// // //     );
// // //   }
// // //
// // //   void _editExam(int index) {
// // //     final exam = SharedState.exams[index];
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(
// // //         builder: (context) => CreateExamPage(
// // //           examName: exam['examName'],
// // //           countdownTime: exam['countdownTime'],
// // //           questions: List<Map<String, String>>.from(exam['questions']),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Admin Page'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Center(
// // //             child: Card(
// // //               child: InkWell(
// // //                 onTap: _showExamDialog,
// // //                 child: const Padding(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   child: Text('Create Exam Page'),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: SharedState.exams.length,
// // //               itemBuilder: (context, index) {
// // //                 final exam = SharedState.exams[index];
// // //                 return ListTile(
// // //                   title: Text(exam['examName']),
// // //                   subtitle: Text('Time: ${exam['countdownTime']} minutes'),
// // //                   onTap: () => _editExam(index),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'create_exam_page.dart';
// // // import 'shared_state.dart';
// // //
// // // class AdminPage extends StatefulWidget {
// // //   const AdminPage({super.key});
// // //
// // //   @override
// // //   State<AdminPage> createState() => _AdminPageState();
// // // }
// // //
// // // class _AdminPageState extends State<AdminPage> {
// // //   final TextEditingController _examNameController = TextEditingController();
// // //   final TextEditingController _countdownTimeController = TextEditingController();
// // //
// // //   // Function to show the create exam dialog
// // //   void _showExamDialog() {
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Create Exam'),
// // //           content: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               TextField(
// // //                 controller: _examNameController,
// // //                 decoration: const InputDecoration(labelText: 'Exam Name'),
// // //               ),
// // //               TextField(
// // //                 controller: _countdownTimeController,
// // //                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// // //                 keyboardType: TextInputType.number,
// // //               ),
// // //             ],
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 final countdownTime = _countdownTimeController.text;
// // //                 if (int.tryParse(countdownTime) == null) {
// // //                   // Show error if countdown time is not a valid number
// // //                   ScaffoldMessenger.of(context).showSnackBar(
// // //                     const SnackBar(content: Text('Please enter a valid countdown time')),
// // //                   );
// // //                   return;
// // //                 }
// // //                 final newExam = {
// // //                   'examName': _examNameController.text,
// // //                   'countdownTime': countdownTime,
// // //                   'questions': [],
// // //                 };
// // //                 setState(() {
// // //                   SharedState.exams.add(newExam);
// // //                 });
// // //                 Navigator.of(context).pop();
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(
// // //                     builder: (context) => CreateExamPage(
// // //                       examName: _examNameController.text,
// // //                       countdownTime: countdownTime,
// // //                       questions: [],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //               child: const Text('Create'),
// // //             ),
// // //             TextButton(
// // //               onPressed: () {
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('Cancel'),
// // //             ),
// // //           ],
// // //         );
// // //       },
// // //     );
// // //   }
// // //
// // //   // Function to delete an exam
// // //   void _deleteExam(int index) {
// // //     setState(() {
// // //       SharedState.exams.removeAt(index);
// // //     });
// // //   }
// // //
// // //   // Function to edit an exam
// // //   void _editExam(int index) {
// // //     final exam = SharedState.exams[index];
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(
// // //         builder: (context) => CreateExamPage(
// // //           examName: exam['examName'],
// // //           countdownTime: exam['countdownTime'],
// // //           questions: List<Map<String, String>>.from(exam['questions']),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('Admin Page'),
// // //       ),
// // //       body: Column(
// // //         children: [
// // //           Center(
// // //             child: Card(
// // //               child: InkWell(
// // //                 onTap: _showExamDialog,
// // //                 child: const Padding(
// // //                   padding: EdgeInsets.all(16.0),
// // //                   child: Text('Create Exam Page'),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //           Expanded(
// // //             child: ListView.builder(
// // //               itemCount: SharedState.exams.length,
// // //               itemBuilder: (context, index) {
// // //                 final exam = SharedState.exams[index];
// // //
// // //                 // Alternate background colors for the cards
// // //                 final colors = [Colors.lightBlue.shade100, Colors.pink.shade100];
// // //                 final color = colors[index % colors.length];
// // //
// // //                 return Card(
// // //                   color: color,
// // //                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
// // //                   child: ListTile(
// // //                     title: Text(
// // //                       exam['examName'],
// // //                       style: const TextStyle(
// // //                         fontWeight: FontWeight.bold,
// // //                         fontSize: 18,
// // //                       ),
// // //                     ),
// // //                     subtitle: Text(
// // //                       'Time: ${exam['countdownTime']} minutes',
// // //                       style: const TextStyle(fontSize: 14),
// // //                     ),
// // //                     trailing: Row(
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         IconButton(
// // //                           icon: const Icon(Icons.edit, color: Colors.blue),
// // //                           onPressed: () => _editExam(index),
// // //                         ),
// // //                         IconButton(
// // //                           icon: const Icon(Icons.delete, color: Colors.red),
// // //                           onPressed: () => _deleteExam(index),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// //
// // import 'package:flutter/material.dart';
// // import 'package:syncfusion_flutter_charts/charts.dart';
// // import 'create_exam_page.dart';
// // import 'shared_state.dart';
// //
// // class AdminPage extends StatefulWidget {
// //   const AdminPage({super.key});
// //
// //   @override
// //   State<AdminPage> createState() => _AdminPageState();
// // }
// //
// // class _AdminPageState extends State<AdminPage> {
// //   final TextEditingController _examNameController = TextEditingController();
// //   final TextEditingController _countdownTimeController = TextEditingController();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Admin Page'),
// //       ),
// //       body: Column(
// //         children: [
// //           // Chart displaying the number of exams
// //           Container(
// //             height: 300,
// //             padding: const EdgeInsets.all(16.0),
// //             child: SfCartesianChart(
// //               primaryXAxis: CategoryAxis(),
// //               primaryYAxis: NumericAxis(
// //                 minimum: 0,
// //                 interval: 1,
// //               ),
// //               series: <CartesianSeries>[
// //                 ColumnSeries<ChartData, String>(
// //                   dataSource: _generateChartData(),
// //                   xValueMapper: (ChartData data, _) => data.label,
// //                   yValueMapper: (ChartData data, _) => data.value,
// //                   dataLabelSettings: DataLabelSettings(isVisible: true),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Center(
// //             child: Card(
// //               child: InkWell(
// //                 onTap: _showExamDialog,
// //                 child: const Padding(
// //                   padding: EdgeInsets.all(16.0),
// //                   child: Text('Create Exam Page'),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: SharedState.exams.length,
// //               itemBuilder: (context, index) {
// //                 final exam = SharedState.exams[index];
// //
// //                 // Alternate background colors for the cards
// //                 final colors = [Colors.lightBlue.shade100, Colors.pink.shade100];
// //                 final color = colors[index % colors.length];
// //
// //                 return Card(
// //                   color: color,
// //                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
// //                   child: ListTile(
// //                     title: Text(
// //                       exam['examName'],
// //                       style: const TextStyle(
// //                         fontWeight: FontWeight.bold,
// //                         fontSize: 18,
// //                       ),
// //                     ),
// //                     subtitle: Text(
// //                       'Time: ${exam['countdownTime']} minutes',
// //                       style: const TextStyle(fontSize: 14),
// //                     ),
// //                     trailing: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         IconButton(
// //                           icon: const Icon(Icons.edit, color: Colors.blue),
// //                           onPressed: () => _editExam(index),
// //                         ),
// //                         IconButton(
// //                           icon: const Icon(Icons.delete, color: Colors.red),
// //                           onPressed: () => _deleteExam(index),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// //   // Function to show the create exam dialog
// //   void _showExamDialog() {
// //     showDialog(
// //       context: context,
// //       builder: (context) {
// //         return AlertDialog(
// //           title: const Text('Create Exam'),
// //           content: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               TextField(
// //                 controller: _examNameController,
// //                 decoration: const InputDecoration(labelText: 'Exam Name'),
// //               ),
// //               TextField(
// //                 controller: _countdownTimeController,
// //                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
// //                 keyboardType: TextInputType.number,
// //               ),
// //             ],
// //           ),
// //           actions: [
// //             TextButton(
// //               onPressed: () {
// //                 final countdownTime = _countdownTimeController.text;
// //                 if (int.tryParse(countdownTime) == null) {
// //                   // Show error if countdown time is not a valid number
// //                   ScaffoldMessenger.of(context).showSnackBar(
// //                     const SnackBar(content: Text('Please enter a valid countdown time')),
// //                   );
// //                   return;
// //                 }
// //                 final newExam = {
// //                   'examName': _examNameController.text,
// //                   'countdownTime': countdownTime,
// //                   'questions': [],
// //                 };
// //                 setState(() {
// //                   SharedState.exams.add(newExam);
// //                 });
// //                 Navigator.of(context).pop();
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) => CreateExamPage(
// //                       examName: _examNameController.text,
// //                       countdownTime: countdownTime,
// //                       questions: [],
// //                     ),
// //                   ),
// //                 );
// //               },
// //               child: const Text('Create'),
// //             ),
// //             TextButton(
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //               },
// //               child: const Text('Cancel'),
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   // Function to delete an exam
// //   void _deleteExam(int index) {
// //     setState(() {
// //       SharedState.exams.removeAt(index);
// //     });
// //   }
// //
// //   // Function to edit an exam
// //   void _editExam(int index) {
// //     final exam = SharedState.exams[index];
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => CreateExamPage(
// //           examName: exam['examName'],
// //           countdownTime: exam['countdownTime'],
// //           questions: List<Map<String, String>>.from(exam['questions']),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   // Function to generate chart data
// //   List<ChartData> _generateChartData() {
// //     return [
// //       ChartData('Exams', SharedState.exams.length.toDouble()),
// //     ];
// //   }
// // }
// //
// // class ChartData {
// //   final String label;
// //   final double value;
// //
// //   ChartData(this.label, this.value);
// // }
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'create_exam_page.dart';
// import 'shared_state.dart';
//
// class AdminPage extends StatefulWidget {
//   const AdminPage({super.key});
//
//   @override
//   State<AdminPage> createState() => _AdminPageState();
// }
//
// class _AdminPageState extends State<AdminPage> {
//   final TextEditingController _examNameController = TextEditingController();
//   final TextEditingController _countdownTimeController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Admin Page'),
//       ),
//       body: Column(
//         children: [
//           // Charts displaying the number of exams and countdown times
//           Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: 200,
//                   padding: const EdgeInsets.all(8.0),
//                   child: SfCartesianChart(
//                     primaryXAxis: CategoryAxis(),
//                     primaryYAxis: NumericAxis(
//                       minimum: 0,
//                       interval: 1,
//                     ),
//                     series: <CartesianSeries>[
//                       ColumnSeries<ChartData, String>(
//                         dataSource: _generateExamCountData(),
//                         xValueMapper: (ChartData data, _) => data.label,
//                         yValueMapper: (ChartData data, _) => data.value,
//                         dataLabelSettings: DataLabelSettings(isVisible: true),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   height: 200,
//                   padding: const EdgeInsets.all(8.0),
//                   child: SfCartesianChart(
//                     primaryXAxis: CategoryAxis(),
//                     primaryYAxis: NumericAxis(
//                       minimum: 0,
//                       interval: 1,
//                     ),
//                     series: <CartesianSeries>[
//                       ColumnSeries<ChartData, String>(
//                         dataSource: _generateCountdownTimeData(),
//                         xValueMapper: (ChartData data, _) => data.label,
//                         yValueMapper: (ChartData data, _) => data.value,
//                         dataLabelSettings: DataLabelSettings(isVisible: true),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Center(
//             child: Card(
//               child: InkWell(
//                 onTap: _showExamDialog,
//                 child: const Padding(
//                   padding: EdgeInsets.all(16.0),
//                   child: Text('Create Exam Page'),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: SharedState.exams.length,
//               itemBuilder: (context, index) {
//                 final exam = SharedState.exams[index];
//
//                 // Alternate background colors for the cards
//                 final colors = [Colors.lightBlue.shade100, Colors.pink.shade100];
//                 final color = colors[index % colors.length];
//
//                 return Card(
//                   color: color,
//                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                   child: ListTile(
//                     title: Text(
//                       exam['examName'],
//                       style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                     subtitle: Text(
//                       'Time: ${exam['countdownTime']} minutes',
//                       style: const TextStyle(fontSize: 14),
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.edit, color: Colors.blue),
//                           onPressed: () => _editExam(index),
//                         ),
//                         IconButton(
//                           icon: const Icon(Icons.delete, color: Colors.red),
//                           onPressed: () => _deleteExam(index),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   // Function to show the create exam dialog
//   void _showExamDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Create Exam'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: _examNameController,
//                 decoration: const InputDecoration(labelText: 'Exam Name'),
//               ),
//               TextField(
//                 controller: _countdownTimeController,
//                 decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
//                 keyboardType: TextInputType.number,
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 final countdownTime = _countdownTimeController.text;
//                 if (int.tryParse(countdownTime) == null) {
//                   // Show error if countdown time is not a valid number
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Please enter a valid countdown time')),
//                   );
//                   return;
//                 }
//                 final newExam = {
//                   'examName': _examNameController.text,
//                   'countdownTime': countdownTime,
//                   'questions': [],
//                 };
//                 setState(() {
//                   SharedState.exams.add(newExam);
//                 });
//                 Navigator.of(context).pop();
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CreateExamPage(
//                       examName: _examNameController.text,
//                       countdownTime: countdownTime,
//                       questions: [],
//                     ),
//                   ),
//                 );
//               },
//               child: const Text('Create'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   // Function to delete an exam
//   void _deleteExam(int index) {
//     setState(() {
//       SharedState.exams.removeAt(index);
//     });
//   }
//
//   // Function to edit an exam
//   void _editExam(int index) {
//     final exam = SharedState.exams[index];
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => CreateExamPage(
//           examName: exam['examName'],
//           countdownTime: exam['countdownTime'],
//           questions: List<Map<String, String>>.from(exam['questions']),
//         ),
//       ),
//     );
//   }
//
//   // Function to generate chart data for exam count
//   List<ChartData> _generateExamCountData() {
//     return [
//       ChartData('Exams', SharedState.exams.length.toDouble()),
//     ];
//   }
//
//   // Function to generate chart data for countdown times
//   List<ChartData> _generateCountdownTimeData() {
//     final List<int> countdownTimes = SharedState.exams
//         .map((exam) => int.tryParse(exam['countdownTime']) ?? 0)
//         .toList();
//
//     final List<ChartData> chartData = [];
//     final ranges = ['0-20', '21-40', '41-60', '61-80', '81-100'];
//     final List<int> rangeCounts = List.filled(5, 0);
//
//     for (var time in countdownTimes) {
//       if (time >= 0 && time <= 20) {
//         rangeCounts[0]++;
//       } else if (time >= 21 && time <= 40) {
//         rangeCounts[1]++;
//       } else if (time >= 41 && time <= 60) {
//         rangeCounts[2]++;
//       } else if (time >= 61 && time <= 80) {
//         rangeCounts[3]++;
//       } else if (time >= 81 && time <= 100) {
//         rangeCounts[4]++;
//       }
//     }
//
//     for (int i = 0; i < ranges.length; i++) {
//       chartData.add(ChartData(ranges[i], rangeCounts[i].toDouble()));
//     }
//
//     return chartData;
//   }
// }
//
// class ChartData {
//   final String label;
//   final double value;
//
//   ChartData(this.label, this.value);
// }







import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'create_exam_page.dart';
import 'shared_state.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _examNameController = TextEditingController();
  final TextEditingController _countdownTimeController = TextEditingController();
  String selectedChartType = 'Bar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        actions: [
          DropdownButton<String>(
            value: selectedChartType,
            items: <String>['Bar', 'Line', 'Pie']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedChartType = newValue!;
              });
            },
            dropdownColor: Colors.white,
            iconEnabledColor: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          // Charts displaying the number of exams and countdown times
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  padding: const EdgeInsets.all(8.0),
                  child: _buildChart(_generateExamCountData(), 'Exams'),
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  padding: const EdgeInsets.all(8.0),
                  child: _buildChart(_generateCountdownTimeData(), 'Countdown Times'),
                ),
              ),
            ],
          ),
          Center(
            child: Card(
              child: InkWell(
                onTap: _showExamDialog,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Create Exam Page'),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: SharedState.exams.length,
              itemBuilder: (context, index) {
                final exam = SharedState.exams[index];

                // Alternate background colors for the cards
                final colors = [Colors.lightBlue.shade100, Colors.pink.shade100];
                final color = colors[index % colors.length];

                return Card(
                  color: color,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    title: Text(
                      exam['examName'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      'Time: ${exam['countdownTime']} minutes',
                      style: const TextStyle(fontSize: 14),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () => _editExam(index),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteExam(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChart(List<ChartData> data, String title) {
    switch (selectedChartType) {
      case 'Line':
        return SfCartesianChart(
          title: ChartTitle(text: title),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
            minimum: 0,
            interval: 1,
          ),
          series: <CartesianSeries>[
            LineSeries<ChartData, String>(
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.label,
              yValueMapper: (ChartData data, _) => data.value,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        );
      case 'Pie':
        return SfCircularChart(
          title: ChartTitle(text: title),
          legend: Legend(isVisible: true),
          series: <CircularSeries>[
            PieSeries<ChartData, String>(
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.label,
              yValueMapper: (ChartData data, _) => data.value,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        );
      case 'Bar':
      default:
        return SfCartesianChart(
          title: ChartTitle(text: title),
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(
            minimum: 0,
            interval: 1,
          ),
          series: <CartesianSeries>[
            ColumnSeries<ChartData, String>(
              dataSource: data,
              xValueMapper: (ChartData data, _) => data.label,
              yValueMapper: (ChartData data, _) => data.value,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ],
        );
    }
  }

  // Function to show the create exam dialog
  void _showExamDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Create Exam'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _examNameController,
                decoration: const InputDecoration(labelText: 'Exam Name'),
              ),
              TextField(
                controller: _countdownTimeController,
                decoration: const InputDecoration(labelText: 'Countdown Time (minutes)'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final countdownTime = _countdownTimeController.text;
                if (int.tryParse(countdownTime) == null) {
                  // Show error if countdown time is not a valid number
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter a valid countdown time')),
                  );
                  return;
                }
                final newExam = {
                  'examName': _examNameController.text,
                  'countdownTime': countdownTime,
                  'questions': [],
                };
                setState(() {
                  SharedState.exams.add(newExam);
                });
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateExamPage(
                      examName: _examNameController.text,
                      countdownTime: countdownTime,
                      questions: [],
                    ),
                  ),
                );
              },
              child: const Text('Create'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  // Function to delete an exam
  void _deleteExam(int index) {
    setState(() {
      SharedState.exams.removeAt(index);
    });
  }

  // Function to edit an exam
  void _editExam(int index) {
    final exam = SharedState.exams[index];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateExamPage(
          examName: exam['examName'],
          countdownTime: exam['countdownTime'],
          questions: List<Map<String, String>>.from(exam['questions']),
        ),
      ),
    );
  }

  // Function to generate chart data for exam count
  List<ChartData> _generateExamCountData() {
    return [
      ChartData('Exams', SharedState.exams.length.toDouble()),
    ];
  }

  // Function to generate chart data for countdown times
  List<ChartData> _generateCountdownTimeData() {
    final List<int> countdownTimes = SharedState.exams
        .map((exam) => int.tryParse(exam['countdownTime']) ?? 0)
        .toList();

    final List<ChartData> chartData = [];
    final ranges = ['0-20', '21-40', '41-60', '61-80', '81-100'];
    final List<int> rangeCounts = List.filled(5, 0);

    for (var time in countdownTimes) {
      if (time >= 0 && time <= 20) {
        rangeCounts[0]++;
      } else if (time >= 21 && time <= 40) {
        rangeCounts[1]++;
      } else if (time >= 41 && time <= 60) {
        rangeCounts[2]++;
      } else if (time >= 61 && time <= 80) {
        rangeCounts[3]++;
      } else if (time >= 81 && time <= 100) {
        rangeCounts[4]++;
      }
    }

    for (int i = 0; i < ranges.length; i++) {
      chartData.add(ChartData(ranges[i], rangeCounts[i].toDouble()));
    }

    return chartData;
  }
}

class ChartData {
  final String label;
  final double value;

  ChartData(this.label, this.value);
}