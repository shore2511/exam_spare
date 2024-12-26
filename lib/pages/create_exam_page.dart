// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // //
// // // // // // // // class CreateExamPage extends StatefulWidget {
// // // // // // // //   const CreateExamPage({super.key});
// // // // // // // //
// // // // // // // //   @override
// // // // // // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // // // // // }
// // // // // // // //
// // // // // // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // // // // // //   final TextEditingController _questionController = TextEditingController();
// // // // // // // //   final TextEditingController _optionAController = TextEditingController();
// // // // // // // //   final TextEditingController _optionBController = TextEditingController();
// // // // // // // //   final TextEditingController _optionCController = TextEditingController();
// // // // // // // //   final TextEditingController _optionDController = TextEditingController();
// // // // // // // //   final TextEditingController _correctOptionController = TextEditingController();
// // // // // // // //   final TextEditingController _timerController = TextEditingController();
// // // // // // // //
// // // // // // // //   List<Map<String, String>> _questions = [];
// // // // // // // //
// // // // // // // //   void _addQuestion() {
// // // // // // // //     setState(() {
// // // // // // // //       _questions.add({
// // // // // // // //         'question': _questionController.text,
// // // // // // // //         'optionA': _optionAController.text,
// // // // // // // //         'optionB': _optionBController.text,
// // // // // // // //         'optionC': _optionCController.text,
// // // // // // // //         'optionD': _optionDController.text,
// // // // // // // //         'correctOption': _correctOptionController.text,
// // // // // // // //         'timer': _timerController.text,
// // // // // // // //       });
// // // // // // // //       _clearForm();
// // // // // // // //     });
// // // // // // // //   }
// // // // // // // //
// // // // // // // //   void _clearForm() {
// // // // // // // //     _questionController.clear();
// // // // // // // //     _optionAController.clear();
// // // // // // // //     _optionBController.clear();
// // // // // // // //     _optionCController.clear();
// // // // // // // //     _optionDController.clear();
// // // // // // // //     _correctOptionController.clear();
// // // // // // // //     _timerController.clear();
// // // // // // // //   }
// // // // // // // //
// // // // // // // //   void _deleteQuestion(int index) {
// // // // // // // //     setState(() {
// // // // // // // //       _questions.removeAt(index);
// // // // // // // //     });
// // // // // // // //   }
// // // // // // // //
// // // // // // // //   void _updateQuestion(int index) {
// // // // // // // //     setState(() {
// // // // // // // //       _questions[index] = {
// // // // // // // //         'question': _questionController.text,
// // // // // // // //         'optionA': _optionAController.text,
// // // // // // // //         'optionB': _optionBController.text,
// // // // // // // //         'optionC': _optionCController.text,
// // // // // // // //         'optionD': _optionDController.text,
// // // // // // // //         'correctOption': _correctOptionController.text,
// // // // // // // //         'timer': _timerController.text,
// // // // // // // //       };
// // // // // // // //       _clearForm();
// // // // // // // //     });
// // // // // // // //   }
// // // // // // // //
// // // // // // // //   void _showEditDialog(int index) {
// // // // // // // //     final question = _questions[index];
// // // // // // // //     _questionController.text = question['question']!;
// // // // // // // //     _optionAController.text = question['optionA']!;
// // // // // // // //     _optionBController.text = question['optionB']!;
// // // // // // // //     _optionCController.text = question['optionC']!;
// // // // // // // //     _optionDController.text = question['optionD']!;
// // // // // // // //     _correctOptionController.text = question['correctOption']!;
// // // // // // // //     _timerController.text = question['timer']!;
// // // // // // // //
// // // // // // // //     showDialog(
// // // // // // // //       context: context,
// // // // // // // //       builder: (context) {
// // // // // // // //         return AlertDialog(
// // // // // // // //           title: const Text('Edit Question'),
// // // // // // // //           content: SingleChildScrollView(
// // // // // // // //             child: Column(
// // // // // // // //               children: [
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _questionController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _optionAController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _optionBController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _optionCController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _optionDController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _correctOptionController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // // // //                 ),
// // // // // // // //                 TextField(
// // // // // // // //                   controller: _timerController,
// // // // // // // //                   decoration: const InputDecoration(labelText: 'Timer (seconds)'),
// // // // // // // //                   keyboardType: TextInputType.number,
// // // // // // // //                 ),
// // // // // // // //               ],
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //           actions: [
// // // // // // // //             TextButton(
// // // // // // // //               onPressed: () {
// // // // // // // //                 _updateQuestion(index);
// // // // // // // //                 Navigator.of(context).pop();
// // // // // // // //               },
// // // // // // // //               child: const Text('Save'),
// // // // // // // //             ),
// // // // // // // //             TextButton(
// // // // // // // //               onPressed: () {
// // // // // // // //                 Navigator.of(context).pop();
// // // // // // // //               },
// // // // // // // //               child: const Text('Cancel'),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         );
// // // // // // // //       },
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // //
// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: const Text('Create Exam Page'),
// // // // // // // //       ),
// // // // // // // //       body: SingleChildScrollView(
// // // // // // // //         child: Padding(
// // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // //           child: Column(
// // // // // // // //             children: [
// // // // // // // //               TextField(
// // // // // // // //                 controller: _questionController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // // // // // //               ),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _optionAController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // // // // // //               ),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _optionBController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // // // // // //               ),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _optionCController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // // // // // //               ),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _optionDController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // // // // // //               ),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _correctOptionController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),
// // // // // // // //               TextField(
// // // // // // // //                 controller: _timerController,
// // // // // // // //                 decoration: const InputDecoration(labelText: 'Timer (seconds)'),
// // // // // // // //                 keyboardType: TextInputType.number,
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),
// // // // // // // //               ElevatedButton(
// // // // // // // //                 onPressed: _addQuestion,
// // // // // // // //                 child: const Text('Add Question'),
// // // // // // // //               ),
// // // // // // // //               const SizedBox(height: 20),
// // // // // // // //               ListView.builder(
// // // // // // // //                 shrinkWrap: true,
// // // // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // // // //                 itemCount: _questions.length,
// // // // // // // //                 itemBuilder: (context, index) {
// // // // // // // //                   final question = _questions[index];
// // // // // // // //                   return ListTile(
// // // // // // // //                     title: Text(question['question']!),
// // // // // // // //                     subtitle: Column(
// // // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                       children: [
// // // // // // // //                         Text('A: ${question['optionA']}'),
// // // // // // // //                         Text('B: ${question['optionB']}'),
// // // // // // // //                         Text('C: ${question['optionC']}'),
// // // // // // // //                         Text('D: ${question['optionD']}'),
// // // // // // // //                         Text('Correct: ${question['correctOption']}'),
// // // // // // // //                         Text('Timer: ${question['timer']} seconds'),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                     trailing: Row(
// // // // // // // //                       mainAxisSize: MainAxisSize.min,
// // // // // // // //                       children: [
// // // // // // // //                         IconButton(
// // // // // // // //                           icon: const Icon(Icons.edit),
// // // // // // // //                           onPressed: () => _showEditDialog(index),
// // // // // // // //                         ),
// // // // // // // //                         IconButton(
// // // // // // // //                           icon: const Icon(Icons.delete),
// // // // // // // //                           onPressed: () => _deleteQuestion(index),
// // // // // // // //                         ),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                   );
// // // // // // // //                 },
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // //
// // // // // // //
// // // // // // //
// // // // // // //
// // // // // // //
// // // // // // // import 'package:flutter/material.dart';
// // // // // // //
// // // // // // // class CreateExamPage extends StatefulWidget {
// // // // // // //   final String examName;
// // // // // // //   final String countdownTime;
// // // // // // //
// // // // // // //   const CreateExamPage({
// // // // // // //     super.key,
// // // // // // //     required this.examName,
// // // // // // //     required this.countdownTime,
// // // // // // //   });
// // // // // // //
// // // // // // //   @override
// // // // // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // // // // }
// // // // // // //
// // // // // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // // // // //   final TextEditingController _questionController = TextEditingController();
// // // // // // //   final TextEditingController _optionAController = TextEditingController();
// // // // // // //   final TextEditingController _optionBController = TextEditingController();
// // // // // // //   final TextEditingController _optionCController = TextEditingController();
// // // // // // //   final TextEditingController _optionDController = TextEditingController();
// // // // // // //   final TextEditingController _correctOptionController = TextEditingController();
// // // // // // //
// // // // // // //   List<Map<String, String>> _questions = [];
// // // // // // //
// // // // // // //   void _addQuestion() {
// // // // // // //     setState(() {
// // // // // // //       _questions.add({
// // // // // // //         'question': _questionController.text,
// // // // // // //         'optionA': _optionAController.text,
// // // // // // //         'optionB': _optionBController.text,
// // // // // // //         'optionC': _optionCController.text,
// // // // // // //         'optionD': _optionDController.text,
// // // // // // //         'correctOption': _correctOptionController.text,
// // // // // // //       });
// // // // // // //       _clearForm();
// // // // // // //     });
// // // // // // //   }
// // // // // // //
// // // // // // //   void _clearForm() {
// // // // // // //     _questionController.clear();
// // // // // // //     _optionAController.clear();
// // // // // // //     _optionBController.clear();
// // // // // // //     _optionCController.clear();
// // // // // // //     _optionDController.clear();
// // // // // // //     _correctOptionController.clear();
// // // // // // //   }
// // // // // // //
// // // // // // //   void _deleteQuestion(int index) {
// // // // // // //     setState(() {
// // // // // // //       _questions.removeAt(index);
// // // // // // //     });
// // // // // // //   }
// // // // // // //
// // // // // // //   void _updateQuestion(int index) {
// // // // // // //     setState(() {
// // // // // // //       _questions[index] = {
// // // // // // //         'question': _questionController.text,
// // // // // // //         'optionA': _optionAController.text,
// // // // // // //         'optionB': _optionBController.text,
// // // // // // //         'optionC': _optionCController.text,
// // // // // // //         'optionD': _optionDController.text,
// // // // // // //         'correctOption': _correctOptionController.text,
// // // // // // //       };
// // // // // // //       _clearForm();
// // // // // // //     });
// // // // // // //   }
// // // // // // //
// // // // // // //   void _showEditDialog(int index) {
// // // // // // //     final question = _questions[index];
// // // // // // //     _questionController.text = question['question']!;
// // // // // // //     _optionAController.text = question['optionA']!;
// // // // // // //     _optionBController.text = question['optionB']!;
// // // // // // //     _optionCController.text = question['optionC']!;
// // // // // // //     _optionDController.text = question['optionD']!;
// // // // // // //     _correctOptionController.text = question['correctOption']!;
// // // // // // //
// // // // // // //     showDialog(
// // // // // // //       context: context,
// // // // // // //       builder: (context) {
// // // // // // //         return AlertDialog(
// // // // // // //           title: const Text('Edit Question'),
// // // // // // //           content: SingleChildScrollView(
// // // // // // //             child: Column(
// // // // // // //               children: [
// // // // // // //                 TextField(
// // // // // // //                   controller: _questionController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // // // // //                 ),
// // // // // // //                 TextField(
// // // // // // //                   controller: _optionAController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // // // // //                 ),
// // // // // // //                 TextField(
// // // // // // //                   controller: _optionBController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // // // // //                 ),
// // // // // // //                 TextField(
// // // // // // //                   controller: _optionCController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // // // // //                 ),
// // // // // // //                 TextField(
// // // // // // //                   controller: _optionDController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // // // // //                 ),
// // // // // // //                 TextField(
// // // // // // //                   controller: _correctOptionController,
// // // // // // //                   decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // // //                 ),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //           actions: [
// // // // // // //             TextButton(
// // // // // // //               onPressed: () {
// // // // // // //                 _updateQuestion(index);
// // // // // // //                 Navigator.of(context).pop();
// // // // // // //               },
// // // // // // //               child: const Text('Save'),
// // // // // // //             ),
// // // // // // //             TextButton(
// // // // // // //               onPressed: () {
// // // // // // //                 Navigator.of(context).pop();
// // // // // // //               },
// // // // // // //               child: const Text('Cancel'),
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         );
// // // // // // //       },
// // // // // // //     );
// // // // // // //   }
// // // // // // //
// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // // // // // //       ),
// // // // // // //       body: SingleChildScrollView(
// // // // // // //         child: Padding(
// // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // //           child: Column(
// // // // // // //             children: [
// // // // // // //               TextField(
// // // // // // //                 controller: _questionController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // // // // //               ),
// // // // // // //               TextField(
// // // // // // //                 controller: _optionAController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // // // // //               ),
// // // // // // //               TextField(
// // // // // // //                 controller: _optionBController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // // // // //               ),
// // // // // // //               TextField(
// // // // // // //                 controller: _optionCController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // // // // //               ),
// // // // // // //               TextField(
// // // // // // //                 controller: _optionDController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // // // // //               ),
// // // // // // //               TextField(
// // // // // // //                 controller: _correctOptionController,
// // // // // // //                 decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: _addQuestion,
// // // // // // //                 child: const Text('Add Question'),
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               ListView.builder(
// // // // // // //                 shrinkWrap: true,
// // // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // // //                 itemCount: _questions.length,
// // // // // // //                 itemBuilder: (context, index) {
// // // // // // //                   final question = _questions[index];
// // // // // // //                   return ListTile(
// // // // // // //                     title: Text(question['question']!),
// // // // // // //                     subtitle: Column(
// // // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                       children: [
// // // // // // //                         Text('A: ${question['optionA']}'),
// // // // // // //                         Text('B: ${question['optionB']}'),
// // // // // // //                         Text('C: ${question['optionC']}'),
// // // // // // //                         Text('D: ${question['optionD']}'),
// // // // // // //                         Text('Correct: ${question['correctOption']}'),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                     trailing: Row(
// // // // // // //                       mainAxisSize: MainAxisSize.min,
// // // // // // //                       children: [
// // // // // // //                         IconButton(
// // // // // // //                           icon: const Icon(Icons.edit),
// // // // // // //                           onPressed: () => _showEditDialog(index),
// // // // // // //                         ),
// // // // // // //                         IconButton(
// // // // // // //                           icon: const Icon(Icons.delete),
// // // // // // //                           onPressed: () => _deleteQuestion(index),
// // // // // // //                         ),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                   );
// // // // // // //                 },
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // //
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'shared_state.dart';
// // // // // //
// // // // // // class CreateExamPage extends StatefulWidget {
// // // // // //   final String examName;
// // // // // //   final String countdownTime;
// // // // // //
// // // // // //   const CreateExamPage({
// // // // // //     super.key,
// // // // // //     required this.examName,
// // // // // //     required this.countdownTime,
// // // // // //   });
// // // // // //
// // // // // //   @override
// // // // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // // // }
// // // // // //
// // // // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // // // //   final TextEditingController _questionController = TextEditingController();
// // // // // //   final TextEditingController _optionAController = TextEditingController();
// // // // // //   final TextEditingController _optionBController = TextEditingController();
// // // // // //   final TextEditingController _optionCController = TextEditingController();
// // // // // //   final TextEditingController _optionDController = TextEditingController();
// // // // // //   final TextEditingController _correctOptionController = TextEditingController();
// // // // // //
// // // // // //   List<Map<String, String>> _questions = [];
// // // // // //
// // // // // //   void _addQuestion() {
// // // // // //     setState(() {
// // // // // //       _questions.add({
// // // // // //         'question': _questionController.text,
// // // // // //         'optionA': _optionAController.text,
// // // // // //         'optionB': _optionBController.text,
// // // // // //         'optionC': _optionCController.text,
// // // // // //         'optionD': _optionDController.text,
// // // // // //         'correctOption': _correctOptionController.text,
// // // // // //       });
// // // // // //       _clearForm();
// // // // // //     });
// // // // // //     SharedState.questions = _questions;
// // // // // //   }
// // // // // //
// // // // // //   void _clearForm() {
// // // // // //     _questionController.clear();
// // // // // //     _optionAController.clear();
// // // // // //     _optionBController.clear();
// // // // // //     _optionCController.clear();
// // // // // //     _optionDController.clear();
// // // // // //     _correctOptionController.clear();
// // // // // //   }
// // // // // //
// // // // // //   void _deleteQuestion(int index) {
// // // // // //     setState(() {
// // // // // //       _questions.removeAt(index);
// // // // // //     });
// // // // // //     SharedState.questions = _questions;
// // // // // //   }
// // // // // //
// // // // // //   void _updateQuestion(int index) {
// // // // // //     setState(() {
// // // // // //       _questions[index] = {
// // // // // //         'question': _questionController.text,
// // // // // //         'optionA': _optionAController.text,
// // // // // //         'optionB': _optionBController.text,
// // // // // //         'optionC': _optionCController.text,
// // // // // //         'optionD': _optionDController.text,
// // // // // //         'correctOption': _correctOptionController.text,
// // // // // //       };
// // // // // //       _clearForm();
// // // // // //     });
// // // // // //     SharedState.questions = _questions;
// // // // // //   }
// // // // // //
// // // // // //   void _showEditDialog(int index) {
// // // // // //     final question = _questions[index];
// // // // // //     _questionController.text = question['question']!;
// // // // // //     _optionAController.text = question['optionA']!;
// // // // // //     _optionBController.text = question['optionB']!;
// // // // // //     _optionCController.text = question['optionC']!;
// // // // // //     _optionDController.text = question['optionD']!;
// // // // // //     _correctOptionController.text = question['correctOption']!;
// // // // // //
// // // // // //     showDialog(
// // // // // //       context: context,
// // // // // //       builder: (context) {
// // // // // //         return AlertDialog(
// // // // // //           title: const Text('Edit Question'),
// // // // // //           content: SingleChildScrollView(
// // // // // //             child: Column(
// // // // // //               children: [
// // // // // //                 TextField(
// // // // // //                   controller: _questionController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _optionAController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _optionBController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _optionCController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _optionDController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // // // //                 ),
// // // // // //                 TextField(
// // // // // //                   controller: _correctOptionController,
// // // // // //                   decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ),
// // // // // //           actions: [
// // // // // //             TextButton(
// // // // // //               onPressed: () {
// // // // // //                 _updateQuestion(index);
// // // // // //                 Navigator.of(context).pop();
// // // // // //               },
// // // // // //               child: const Text('Save'),
// // // // // //             ),
// // // // // //             TextButton(
// // // // // //               onPressed: () {
// // // // // //                 Navigator.of(context).pop();
// // // // // //               },
// // // // // //               child: const Text('Cancel'),
// // // // // //             ),
// // // // // //           ],
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }
// // // // // //
// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return Scaffold(
// // // // // //       appBar: AppBar(
// // // // // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // // // // //       ),
// // // // // //       body: SingleChildScrollView(
// // // // // //         child: Padding(
// // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // //           child: Column(
// // // // // //             children: [
// // // // // //               TextField(
// // // // // //                 controller: _questionController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // // // //               ),
// // // // // //               TextField(
// // // // // //                 controller: _optionAController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // // // //               ),
// // // // // //               TextField(
// // // // // //                 controller: _optionBController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // // // //               ),
// // // // // //               TextField(
// // // // // //                 controller: _optionCController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // // // //               ),
// // // // // //               TextField(
// // // // // //                 controller: _optionDController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // // // //               ),
// // // // // //               TextField(
// // // // // //                 controller: _correctOptionController,
// // // // // //                 decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // // //               ),
// // // // // //               const SizedBox(height: 20),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: _addQuestion,
// // // // // //                 child: const Text('Add Question'),
// // // // // //               ),
// // // // // //               const SizedBox(height: 20),
// // // // // //               ListView.builder(
// // // // // //                 shrinkWrap: true,
// // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // //                 itemCount: _questions.length,
// // // // // //                 itemBuilder: (context, index) {
// // // // // //                   final question = _questions[index];
// // // // // //                   return ListTile(
// // // // // //                     title: Text(question['question']!),
// // // // // //                     subtitle: Column(
// // // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                       children: [
// // // // // //                         Text('A: ${question['optionA']}'),
// // // // // //                         Text('B: ${question['optionB']}'),
// // // // // //                         Text('C: ${question['optionC']}'),
// // // // // //                         Text('D: ${question['optionD']}'),
// // // // // //                         Text('Correct: ${question['correctOption']}'),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                     trailing: Row(
// // // // // //                       mainAxisSize: MainAxisSize.min,
// // // // // //                       children: [
// // // // // //                         IconButton(
// // // // // //                           icon: const Icon(Icons.edit),
// // // // // //                           onPressed: () => _showEditDialog(index),
// // // // // //                         ),
// // // // // //                         IconButton(
// // // // // //                           icon: const Icon(Icons.delete),
// // // // // //                           onPressed: () => _deleteQuestion(index),
// // // // // //                         ),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                   );
// // // // // //                 },
// // // // // //               ),
// // // // // //             ],
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
// // // // // import 'shared_state.dart';
// // // // //
// // // // // class CreateExamPage extends StatefulWidget {
// // // // //   final String examName;
// // // // //   final String countdownTime;
// // // // //   final List<Map<String, String>> questions;
// // // // //
// // // // //   const CreateExamPage({
// // // // //     super.key,
// // // // //     required this.examName,
// // // // //     required this.countdownTime,
// // // // //     required this.questions,
// // // // //   });
// // // // //
// // // // //   @override
// // // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // // }
// // // // //
// // // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // // //   final TextEditingController _questionController = TextEditingController();
// // // // //   final TextEditingController _optionAController = TextEditingController();
// // // // //   final TextEditingController _optionBController = TextEditingController();
// // // // //   final TextEditingController _optionCController = TextEditingController();
// // // // //   final TextEditingController _optionDController = TextEditingController();
// // // // //   final TextEditingController _correctOptionController = TextEditingController();
// // // // //
// // // // //   late List<Map<String, String>> _questions;
// // // // //
// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _questions = widget.questions;
// // // // //   }
// // // // //
// // // // //   void _addQuestion() {
// // // // //     setState(() {
// // // // //       _questions.add({
// // // // //         'question': _questionController.text,
// // // // //         'optionA': _optionAController.text,
// // // // //         'optionB': _optionBController.text,
// // // // //         'optionC': _optionCController.text,
// // // // //         'optionD': _optionDController.text,
// // // // //         'correctOption': _correctOptionController.text,
// // // // //       });
// // // // //       _clearForm();
// // // // //     });
// // // // //     _updateSharedState();
// // // // //   }
// // // // //
// // // // //   void _clearForm() {
// // // // //     _questionController.clear();
// // // // //     _optionAController.clear();
// // // // //     _optionBController.clear();
// // // // //     _optionCController.clear();
// // // // //     _optionDController.clear();
// // // // //     _correctOptionController.clear();
// // // // //   }
// // // // //
// // // // //   void _deleteQuestion(int index) {
// // // // //     setState(() {
// // // // //       _questions.removeAt(index);
// // // // //     });
// // // // //     _updateSharedState();
// // // // //   }
// // // // //
// // // // //   void _updateQuestion(int index) {
// // // // //     setState(() {
// // // // //       _questions[index] = {
// // // // //         'question': _questionController.text,
// // // // //         'optionA': _optionAController.text,
// // // // //         'optionB': _optionBController.text,
// // // // //         'optionC': _optionCController.text,
// // // // //         'optionD': _optionDController.text,
// // // // //         'correctOption': _correctOptionController.text,
// // // // //       };
// // // // //       _clearForm();
// // // // //     });
// // // // //     _updateSharedState();
// // // // //   }
// // // // //
// // // // //   void _showEditDialog(int index) {
// // // // //     final question = _questions[index];
// // // // //     _questionController.text = question['question']!;
// // // // //     _optionAController.text = question['optionA']!;
// // // // //     _optionBController.text = question['optionB']!;
// // // // //     _optionCController.text = question['optionC']!;
// // // // //     _optionDController.text = question['optionD']!;
// // // // //     _correctOptionController.text = question['correctOption']!;
// // // // //
// // // // //     showDialog(
// // // // //       context: context,
// // // // //       builder: (context) {
// // // // //         return AlertDialog(
// // // // //           title: const Text('Edit Question'),
// // // // //           content: SingleChildScrollView(
// // // // //             child: Column(
// // // // //               children: [
// // // // //                 TextField(
// // // // //                   controller: _questionController,
// // // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _optionAController,
// // // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _optionBController,
// // // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _optionCController,
// // // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _optionDController,
// // // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // // //                 ),
// // // // //                 TextField(
// // // // //                   controller: _correctOptionController,
// // // // //                   decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //           actions: [
// // // // //             TextButton(
// // // // //               onPressed: () {
// // // // //                 _updateQuestion(index);
// // // // //                 Navigator.of(context).pop();
// // // // //               },
// // // // //               child: const Text('Save'),
// // // // //             ),
// // // // //             TextButton(
// // // // //               onPressed: () {
// // // // //                 Navigator.of(context).pop();
// // // // //               },
// // // // //               child: const Text('Cancel'),
// // // // //             ),
// // // // //           ],
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }
// // // // //
// // // // //   void _updateSharedState() {
// // // // //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// // // // //     if (examIndex != -1) {
// // // // //       SharedState.exams[examIndex]['questions'] = _questions;
// // // // //     }
// // // // //   }
// // // // //
// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // // // //       ),
// // // // //       body: SingleChildScrollView(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.all(16.0),
// // // // //           child: Column(
// // // // //             children: [
// // // // //               TextField(
// // // // //                 controller: _questionController,
// // // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // // //               ),
// // // // //               TextField(
// // // // //                 controller: _optionAController,
// // // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // // //               ),
// // // // //               TextField(
// // // // //                 controller: _optionBController,
// // // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // // //               ),
// // // // //               TextField(
// // // // //                 controller: _optionCController,
// // // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // // //               ),
// // // // //               TextField(
// // // // //                 controller: _optionDController,
// // // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // // //               ),
// // // // //               TextField(
// // // // //                 controller: _correctOptionController,
// // // // //                 decoration: const InputDecoration(labelText: 'Correct Option'),
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //               ElevatedButton(
// // // // //                 onPressed: _addQuestion,
// // // // //                 child: const Text('Add Question'),
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //               ListView.builder(
// // // // //                 shrinkWrap: true,
// // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // //                 itemCount: _questions.length,
// // // // //                 itemBuilder: (context, index) {
// // // // //                   final question = _questions[index];
// // // // //                   return ListTile(
// // // // //                     title: Text(question['question']!),
// // // // //                     subtitle: Column(
// // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                       children: [
// // // // //                         Text('A: ${question['optionA']}'),
// // // // //                         Text('B: ${question['optionB']}'),
// // // // //                         Text('C: ${question['optionC']}'),
// // // // //                         Text('D: ${question['optionD']}'),
// // // // //                         Text('Correct: ${question['correctOption']}'),
// // // // //                       ],
// // // // //                     ),
// // // // //                     trailing: Row(
// // // // //                       mainAxisSize: MainAxisSize.min,
// // // // //                       children: [
// // // // //                         IconButton(
// // // // //                           icon: const Icon(Icons.edit),
// // // // //                           onPressed: () => _showEditDialog(index),
// // // // //                         ),
// // // // //                         IconButton(
// // // // //                           icon: const Icon(Icons.delete),
// // // // //                           onPressed: () => _deleteQuestion(index),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   );
// // // // //                 },
// // // // //               ),
// // // // //             ],
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
// // // //
// // // //
// // // // import 'package:flutter/material.dart';
// // // // import 'shared_state.dart';
// // // //
// // // // class CreateExamPage extends StatefulWidget {
// // // //   final String examName;
// // // //   final String countdownTime;
// // // //   final List<Map<String, String>> questions;
// // // //
// // // //   const CreateExamPage({
// // // //     super.key,
// // // //     required this.examName,
// // // //     required this.countdownTime,
// // // //     required this.questions,
// // // //   });
// // // //
// // // //   @override
// // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // }
// // // //
// // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // //   final TextEditingController _questionController = TextEditingController();
// // // //   final TextEditingController _optionAController = TextEditingController();
// // // //   final TextEditingController _optionBController = TextEditingController();
// // // //   final TextEditingController _optionCController = TextEditingController();
// // // //   final TextEditingController _optionDController = TextEditingController();
// // // //   final TextEditingController _correctOptionController = TextEditingController();
// // // //
// // // //   late List<Map<String, String>> _questions;
// // // //
// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _questions = widget.questions;
// // // //   }
// // // //
// // // //   void _addQuestion() {
// // // //     setState(() {
// // // //       _questions.add({
// // // //         'question': _questionController.text,
// // // //         'optionA': _optionAController.text,
// // // //         'optionB': _optionBController.text,
// // // //         'optionC': _optionCController.text,
// // // //         'optionD': _optionDController.text,
// // // //         'correctOption': _correctOptionController.text,
// // // //       });
// // // //       _clearForm();
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _clearForm() {
// // // //     _questionController.clear();
// // // //     _optionAController.clear();
// // // //     _optionBController.clear();
// // // //     _optionCController.clear();
// // // //     _optionDController.clear();
// // // //     _correctOptionController.clear();
// // // //   }
// // // //
// // // //   void _deleteQuestion(int index) {
// // // //     setState(() {
// // // //       _questions.removeAt(index);
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _updateQuestion(int index) {
// // // //     setState(() {
// // // //       _questions[index] = {
// // // //         'question': _questionController.text,
// // // //         'optionA': _optionAController.text,
// // // //         'optionB': _optionBController.text,
// // // //         'optionC': _optionCController.text,
// // // //         'optionD': _optionDController.text,
// // // //         'correctOption': _correctOptionController.text,
// // // //       };
// // // //       _clearForm();
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _showEditDialog(int index) {
// // // //     final question = _questions[index];
// // // //     _questionController.text = question['question']!;
// // // //     _optionAController.text = question['optionA']!;
// // // //     _optionBController.text = question['optionB']!;
// // // //     _optionCController.text = question['optionC']!;
// // // //     _optionDController.text = question['optionD']!;
// // // //     _correctOptionController.text = question['correctOption']!;
// // // //
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) {
// // // //         return AlertDialog(
// // // //           title: const Text('Edit Question'),
// // // //           content: SingleChildScrollView(
// // // //             child: Column(
// // // //               children: [
// // // //                 TextField(
// // // //                   controller: _questionController,
// // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionAController,
// // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionBController,
// // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionCController,
// // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionDController,
// // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _correctOptionController,
// // // //                   decoration: const InputDecoration(labelText: 'Correct Option'),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 _updateQuestion(index);
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //               child: const Text('Save'),
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
// // // //   void _updateSharedState() {
// // // //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// // // //     if (examIndex != -1) {
// // // //       SharedState.exams[examIndex]['questions'] = _questions;
// // // //     }
// // // //   }
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // // //       ),
// // // //       body: SingleChildScrollView(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(16.0),
// // // //           child: Column(
// // // //             children: [
// // // //               TextField(
// // // //                 controller: _questionController,
// // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionAController,
// // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionBController,
// // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionCController,
// // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionDController,
// // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _correctOptionController,
// // // //                 decoration: const InputDecoration(labelText: 'Correct Option'),
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               ElevatedButton(
// // // //                 onPressed: _addQuestion,
// // // //                 child: const Text('Add Question'),
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               ListView.builder(
// // // //                 shrinkWrap: true,
// // // //                 physics: const NeverScrollableScrollPhysics(),
// // // //                 itemCount: _questions.length,
// // // //                 itemBuilder: (context, index) {
// // // //                   final question = _questions[index];
// // // //                   return ListTile(
// // // //                     title: Text(question['question']!),
// // // //                     subtitle: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text('A: ${question['optionA']}'),
// // // //                         Text('B: ${question['optionB']}'),
// // // //                         Text('C: ${question['optionC']}'),
// // // //                         Text('D: ${question['optionD']}'),
// // // //                         Text('Correct: ${question['correctOption']}'),
// // // //                       ],
// // // //                     ),
// // // //                     trailing: Row(
// // // //                       mainAxisSize: MainAxisSize.min,
// // // //                       children: [
// // // //                         IconButton(
// // // //                           icon: const Icon(Icons.edit),
// // // //                           onPressed: () => _showEditDialog(index),
// // // //                         ),
// // // //                         IconButton(
// // // //                           icon: const Icon(Icons.delete),
// // // //                           onPressed: () => _deleteQuestion(index),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // //
// // //
// // //
// // //
// // //
// // //
// // //
// // // // import 'package:flutter/material.dart';
// // // // import 'shared_state.dart';
// // // //
// // // // class CreateExamPage extends StatefulWidget {
// // // //   final String examName;
// // // //   final String countdownTime;
// // // //   final List<Map<String, String>> questions;
// // // //
// // // //   const CreateExamPage({
// // // //     super.key,
// // // //     required this.examName,
// // // //     required this.countdownTime,
// // // //     required this.questions,
// // // //   });
// // // //
// // // //   @override
// // // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // // }
// // // //
// // // // class _CreateExamPageState extends State<CreateExamPage> {
// // // //   final TextEditingController _questionController = TextEditingController();
// // // //   final TextEditingController _optionAController = TextEditingController();
// // // //   final TextEditingController _optionBController = TextEditingController();
// // // //   final TextEditingController _optionCController = TextEditingController();
// // // //   final TextEditingController _optionDController = TextEditingController();
// // // //   String _correctOption = 'A';
// // // //
// // // //   late List<Map<String, String>> _questions;
// // // //
// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _questions = widget.questions;
// // // //   }
// // // //
// // // //   void _addQuestion() {
// // // //     setState(() {
// // // //       _questions.add({
// // // //         'question': _questionController.text,
// // // //         'optionA': _optionAController.text,
// // // //         'optionB': _optionBController.text,
// // // //         'optionC': _optionCController.text,
// // // //         'optionD': _optionDController.text,
// // // //         'correctOption': _correctOption,
// // // //       });
// // // //       _clearForm();
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _clearForm() {
// // // //     _questionController.clear();
// // // //     _optionAController.clear();
// // // //     _optionBController.clear();
// // // //     _optionCController.clear();
// // // //     _optionDController.clear();
// // // //     _correctOption = 'A';
// // // //   }
// // // //
// // // //   void _deleteQuestion(int index) {
// // // //     setState(() {
// // // //       _questions.removeAt(index);
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _updateQuestion(int index) {
// // // //     setState(() {
// // // //       _questions[index] = {
// // // //         'question': _questionController.text,
// // // //         'optionA': _optionAController.text,
// // // //         'optionB': _optionBController.text,
// // // //         'optionC': _optionCController.text,
// // // //         'optionD': _optionDController.text,
// // // //         'correctOption': _correctOption,
// // // //       };
// // // //       _clearForm();
// // // //     });
// // // //     _updateSharedState();
// // // //   }
// // // //
// // // //   void _showEditDialog(int index) {
// // // //     final question = _questions[index];
// // // //     _questionController.text = question['question']!;
// // // //     _optionAController.text = question['optionA']!;
// // // //     _optionBController.text = question['optionB']!;
// // // //     _optionCController.text = question['optionC']!;
// // // //     _optionDController.text = question['optionD']!;
// // // //     _correctOption = question['correctOption']!;
// // // //
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) {
// // // //         return AlertDialog(
// // // //           title: const Text('Edit Question'),
// // // //           content: SingleChildScrollView(
// // // //             child: Column(
// // // //               children: [
// // // //                 TextField(
// // // //                   controller: _questionController,
// // // //                   decoration: const InputDecoration(labelText: 'Question'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionAController,
// // // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionBController,
// // // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionCController,
// // // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // // //                 ),
// // // //                 TextField(
// // // //                   controller: _optionDController,
// // // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // // //                 ),
// // // //                 DropdownButton<String>(
// // // //                   value: _correctOption,
// // // //                   onChanged: (String? newValue) {
// // // //                     setState(() {
// // // //                       _correctOption = newValue!;
// // // //                     });
// // // //                   },
// // // //                   items: <String>['A', 'B', 'C', 'D']
// // // //                       .map<DropdownMenuItem<String>>((String value) {
// // // //                     return DropdownMenuItem<String>(
// // // //                       value: value,
// // // //                       child: Text(value),
// // // //                     );
// // // //                   }).toList(),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 _updateQuestion(index);
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //               child: const Text('Save'),
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
// // // //   void _updateSharedState() {
// // // //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// // // //     if (examIndex != -1) {
// // // //       SharedState.exams[examIndex]['questions'] = _questions;
// // // //     }
// // // //   }
// // // //
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // // //       ),
// // // //       body: SingleChildScrollView(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(16.0),
// // // //           child: Column(
// // // //             children: [
// // // //               TextField(
// // // //                 controller: _questionController,
// // // //                 decoration: const InputDecoration(labelText: 'Question'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionAController,
// // // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionBController,
// // // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionCController,
// // // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // // //               ),
// // // //               TextField(
// // // //                 controller: _optionDController,
// // // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // // //               ),
// // // //               DropdownButton<String>(
// // // //                 value: _correctOption,
// // // //                 onChanged: (String? newValue) {
// // // //                   setState(() {
// // // //                     _correctOption = newValue!;
// // // //                   });
// // // //                 },
// // // //                 items: <String>['A', 'B', 'C', 'D']
// // // //                     .map<DropdownMenuItem<String>>((String value) {
// // // //                   return DropdownMenuItem<String>(
// // // //                     value: value,
// // // //                     child: Text(value),
// // // //                   );
// // // //                 }).toList(),
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               ElevatedButton(
// // // //                 onPressed: _addQuestion,
// // // //                 child: const Text('Add Question'),
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               ListView.builder(
// // // //                 shrinkWrap: true,
// // // //                 physics: const NeverScrollableScrollPhysics(),
// // // //                 itemCount: _questions.length,
// // // //                 itemBuilder: (context, index) {
// // // //                   final question = _questions[index];
// // // //                   return ListTile(
// // // //                     title: Text(question['question']!),
// // // //                     subtitle: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text('A: ${question['optionA']}'),
// // // //                         Text('B: ${question['optionB']}'),
// // // //                         Text('C: ${question['optionC']}'),
// // // //                         Text('D: ${question['optionD']}'),
// // // //                         Text('Correct: ${question['correctOption']}'),
// // // //                       ],
// // // //                     ),
// // // //                     trailing: Row(
// // // //                       mainAxisSize: MainAxisSize.min,
// // // //                       children: [
// // // //                         IconButton(
// // // //                           icon: const Icon(Icons.edit),
// // // //                           onPressed: () => _showEditDialog(index),
// // // //                         ),
// // // //                         IconButton(
// // // //                           icon: const Icon(Icons.delete),
// // // //                           onPressed: () => _deleteQuestion(index),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // //
// // //
// // //
// // //
// // //
// // //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'shared_state.dart';
// // //
// // // class CreateExamPage extends StatefulWidget {
// // //   final String examName;
// // //   final String countdownTime;
// // //   final List<Map<String, String>> questions;
// // //
// // //   const CreateExamPage({
// // //     super.key,
// // //     required this.examName,
// // //     required this.countdownTime,
// // //     required this.questions,
// // //   });
// // //
// // //   @override
// // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // }
// // //
// // // class _CreateExamPageState extends State<CreateExamPage> {
// // //   final TextEditingController _questionController = TextEditingController();
// // //   final TextEditingController _optionAController = TextEditingController();
// // //   final TextEditingController _optionBController = TextEditingController();
// // //   final TextEditingController _optionCController = TextEditingController();
// // //   final TextEditingController _optionDController = TextEditingController();
// // //   String _correctOption = 'A';
// // //
// // //   late List<Map<String, String>> _questions;
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _questions = widget.questions;
// // //   }
// // //
// // //   void _addQuestion() {
// // //     setState(() {
// // //       _questions.add({
// // //         'question': _questionController.text,
// // //         'optionA': _optionAController.text,
// // //         'optionB': _optionBController.text,
// // //         'optionC': _optionCController.text,
// // //         'optionD': _optionDController.text,
// // //         'correctOption': _correctOption,
// // //       });
// // //       _clearForm();
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _clearForm() {
// // //     _questionController.clear();
// // //     _optionAController.clear();
// // //     _optionBController.clear();
// // //     _optionCController.clear();
// // //     _optionDController.clear();
// // //     _correctOption = 'A';
// // //   }
// // //
// // //   void _deleteQuestion(int index) {
// // //     setState(() {
// // //       _questions.removeAt(index);
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _updateQuestion(int index) {
// // //     setState(() {
// // //       _questions[index] = {
// // //         'question': _questionController.text,
// // //         'optionA': _optionAController.text,
// // //         'optionB': _optionBController.text,
// // //         'optionC': _optionCController.text,
// // //         'optionD': _optionDController.text,
// // //         'correctOption': _correctOption,
// // //       };
// // //       _clearForm();
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _showEditDialog(int index) {
// // //     final question = _questions[index];
// // //     _questionController.text = question['question']!;
// // //     _optionAController.text = question['optionA']!;
// // //     _optionBController.text = question['optionB']!;
// // //     _optionCController.text = question['optionC']!;
// // //     _optionDController.text = question['optionD']!;
// // //     _correctOption = question['correctOption']!;
// // //
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Edit Question'),
// // //           content: SingleChildScrollView(
// // //             child: Column(
// // //               children: [
// // //                 TextField(
// // //                   controller: _questionController,
// // //                   decoration: const InputDecoration(labelText: 'Question'),
// // //                 ),
// // //                 TextField(
// // //                   controller: _optionAController,
// // //                   decoration: const InputDecoration(labelText: 'Option A'),
// // //                 ),
// // //                 TextField(
// // //                   controller: _optionBController,
// // //                   decoration: const InputDecoration(labelText: 'Option B'),
// // //                 ),
// // //                 TextField(
// // //                   controller: _optionCController,
// // //                   decoration: const InputDecoration(labelText: 'Option C'),
// // //                 ),
// // //                 TextField(
// // //                   controller: _optionDController,
// // //                   decoration: const InputDecoration(labelText: 'Option D'),
// // //                 ),
// // //                 const SizedBox(height: 20),
// // //                 const Text('Correct Option'),
// // //                 DropdownButton<String>(
// // //                   value: _correctOption,
// // //                   onChanged: (String? newValue) {
// // //                     setState(() {
// // //                       _correctOption = newValue!;
// // //                     });
// // //                   },
// // //                   items: <String>['A', 'B', 'C', 'D']
// // //                       .map<DropdownMenuItem<String>>((String value) {
// // //                     return DropdownMenuItem<String>(
// // //                       value: value,
// // //                       child: Text(value),
// // //                     );
// // //                   }).toList(),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 _updateQuestion(index);
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('Save'),
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
// // //   void _updateSharedState() {
// // //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// // //     if (examIndex != -1) {
// // //       SharedState.exams[examIndex]['questions'] = _questions;
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             children: [
// // //               TextField(
// // //                 controller: _questionController,
// // //                 decoration: const InputDecoration(labelText: 'Question'),
// // //               ),
// // //               TextField(
// // //                 controller: _optionAController,
// // //                 decoration: const InputDecoration(labelText: 'Option A'),
// // //               ),
// // //               TextField(
// // //                 controller: _optionBController,
// // //                 decoration: const InputDecoration(labelText: 'Option B'),
// // //               ),
// // //               TextField(
// // //                 controller: _optionCController,
// // //                 decoration: const InputDecoration(labelText: 'Option C'),
// // //               ),
// // //               TextField(
// // //                 controller: _optionDController,
// // //                 decoration: const InputDecoration(labelText: 'Option D'),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               const Text('Correct Option'),
// // //               DropdownButton<String>(
// // //                 value: _correctOption,
// // //                 onChanged: (String? newValue) {
// // //                   setState(() {
// // //                     _correctOption = newValue!;
// // //                   });
// // //                 },
// // //                 items: <String>['A', 'B', 'C', 'D']
// // //                     .map<DropdownMenuItem<String>>((String value) {
// // //                   return DropdownMenuItem<String>(
// // //                     value: value,
// // //                     child: Text(value),
// // //                   );
// // //                 }).toList(),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               ElevatedButton(
// // //                 onPressed: _addQuestion,
// // //                 child: const Text('Add Question'),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               ListView.builder(
// // //                 shrinkWrap: true,
// // //                 physics: const NeverScrollableScrollPhysics(),
// // //                 itemCount: _questions.length,
// // //                 itemBuilder: (context, index) {
// // //                   final question = _questions[index];
// // //                   return ListTile(
// // //                     title: Text(question['question']!),
// // //                     subtitle: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text('A: ${question['optionA']}'),
// // //                         Text('B: ${question['optionB']}'),
// // //                         Text('C: ${question['optionC']}'),
// // //                         Text('D: ${question['optionD']}'),
// // //                         Text('Correct: ${question['correctOption']}'),
// // //                       ],
// // //                     ),
// // //                     trailing: Row(
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         IconButton(
// // //                           icon: const Icon(Icons.edit),
// // //                           onPressed: () => _showEditDialog(index),
// // //                         ),
// // //                         IconButton(
// // //                           icon: const Icon(Icons.delete),
// // //                           onPressed: () => _deleteQuestion(index),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   );
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // //
// // // import 'package:flutter/material.dart';
// // // import 'shared_state.dart';
// // //
// // // class CreateExamPage extends StatefulWidget {
// // //   final String examName;
// // //   final String countdownTime;
// // //   final List<Map<String, String>> questions;
// // //
// // //   const CreateExamPage({
// // //     super.key,
// // //     required this.examName,
// // //     required this.countdownTime,
// // //     required this.questions,
// // //   });
// // //
// // //   @override
// // //   State<CreateExamPage> createState() => _CreateExamPageState();
// // // }
// // //
// // // class _CreateExamPageState extends State<CreateExamPage> {
// // //   final TextEditingController _questionController = TextEditingController();
// // //   final TextEditingController _optionAController = TextEditingController();
// // //   final TextEditingController _optionBController = TextEditingController();
// // //   final TextEditingController _optionCController = TextEditingController();
// // //   final TextEditingController _optionDController = TextEditingController();
// // //   String _correctOption = 'A';
// // //   String _negativeMarking = '-0.25';
// // //
// // //   late List<Map<String, String>> _questions;
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _questions = widget.questions;
// // //   }
// // //
// // //   void _addQuestion() {
// // //     setState(() {
// // //       _questions.add({
// // //         'question': _questionController.text,
// // //         'optionA': _optionAController.text,
// // //         'optionB': _optionBController.text,
// // //         'optionC': _optionCController.text,
// // //         'optionD': _optionDController.text,
// // //         'correctOption': _correctOption,
// // //         'negativeMarking': _negativeMarking,
// // //       });
// // //       _clearForm();
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _clearForm() {
// // //     _questionController.clear();
// // //     _optionAController.clear();
// // //     _optionBController.clear();
// // //     _optionCController.clear();
// // //     _optionDController.clear();
// // //     _correctOption = 'A';
// // //     _negativeMarking = '-0.25';
// // //   }
// // //
// // //   void _deleteQuestion(int index) {
// // //     setState(() {
// // //       _questions.removeAt(index);
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _updateQuestion(int index) {
// // //     setState(() {
// // //       _questions[index] = {
// // //         'question': _questionController.text,
// // //         'optionA': _optionAController.text,
// // //         'optionB': _optionBController.text,
// // //         'optionC': _optionCController.text,
// // //         'optionD': _optionDController.text,
// // //         'correctOption': _correctOption,
// // //         'negativeMarking': _negativeMarking,
// // //       };
// // //       _clearForm();
// // //     });
// // //     _updateSharedState();
// // //   }
// // //
// // //   void _showEditDialog(int index) {
// // //     final question = _questions[index];
// // //     _questionController.text = question['question']!;
// // //     _optionAController.text = question['optionA']!;
// // //     _optionBController.text = question['optionB']!;
// // //     _optionCController.text = question['optionC']!;
// // //     _optionDController.text = question['optionD']!;
// // //     _correctOption = question['correctOption']!;
// // //     _negativeMarking = question['negativeMarking']!;
// // //
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Edit Question'),
// // //           content: SingleChildScrollView(
// // //             child: Column(
// // //               children: [
// // //                 TextField(
// // //                   controller: _questionController,
// // //                   decoration: const InputDecoration(
// // //                     labelText: 'Question',
// // //                     border: OutlineInputBorder(),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 10),
// // //                 TextField(
// // //                   controller: _optionAController,
// // //                   decoration: const InputDecoration(
// // //                     labelText: 'Option A',
// // //                     border: OutlineInputBorder(),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 10),
// // //                 TextField(
// // //                   controller: _optionBController,
// // //                   decoration: const InputDecoration(
// // //                     labelText: 'Option B',
// // //                     border: OutlineInputBorder(),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 10),
// // //                 TextField(
// // //                   controller: _optionCController,
// // //                   decoration: const InputDecoration(
// // //                     labelText: 'Option C',
// // //                     border: OutlineInputBorder(),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 10),
// // //                 TextField(
// // //                   controller: _optionDController,
// // //                   decoration: const InputDecoration(
// // //                     labelText: 'Option D',
// // //                     border: OutlineInputBorder(),
// // //                   ),
// // //                 ),
// // //                 const SizedBox(height: 20),
// // //                 const Text('Correct Option'),
// // //                 DropdownButton<String>(
// // //                   value: _correctOption,
// // //                   onChanged: (String? newValue) {
// // //                     setState(() {
// // //                       _correctOption = newValue!;
// // //                     });
// // //                   },
// // //                   items: <String>['A', 'B', 'C', 'D']
// // //                       .map<DropdownMenuItem<String>>((String value) {
// // //                     return DropdownMenuItem<String>(
// // //                       value: value,
// // //                       child: Text(value),
// // //                     );
// // //                   }).toList(),
// // //                 ),
// // //                 const SizedBox(height: 20),
// // //                 const Text('Negative Marking'),
// // //                 DropdownButton<String>(
// // //                   value: _negativeMarking,
// // //                   onChanged: (String? newValue) {
// // //                     setState(() {
// // //                       _negativeMarking = newValue!;
// // //                     });
// // //                   },
// // //                   items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
// // //                       .map<DropdownMenuItem<String>>((String value) {
// // //                     return DropdownMenuItem<String>(
// // //                       value: value,
// // //                       child: Text(value),
// // //                     );
// // //                   }).toList(),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 _updateQuestion(index);
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('Save'),
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
// // //   void _updateSharedState() {
// // //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// // //     if (examIndex != -1) {
// // //       SharedState.exams[examIndex]['questions'] = _questions;
// // //     }
// // //   }
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             children: [
// // //               TextField(
// // //                 controller: _questionController,
// // //                 decoration: const InputDecoration(
// // //                   labelText: 'Question',
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 10),
// // //               TextField(
// // //                 controller: _optionAController,
// // //                 decoration: const InputDecoration(
// // //                   labelText: 'Option A',
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 10),
// // //               TextField(
// // //                 controller: _optionBController,
// // //                 decoration: const InputDecoration(
// // //                   labelText: 'Option B',
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 10),
// // //               TextField(
// // //                 controller: _optionCController,
// // //                 decoration: const InputDecoration(
// // //                   labelText: 'Option C',
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 10),
// // //               TextField(
// // //                 controller: _optionDController,
// // //                 decoration: const InputDecoration(
// // //                   labelText: 'Option D',
// // //                   border: OutlineInputBorder(),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               const Text('Correct Option'),
// // //               DropdownButton<String>(
// // //                 value: _correctOption,
// // //                 onChanged: (String? newValue) {
// // //                   setState(() {
// // //                     _correctOption = newValue!;
// // //                   });
// // //                 },
// // //                 items: <String>['A', 'B', 'C', 'D']
// // //                     .map<DropdownMenuItem<String>>((String value) {
// // //                   return DropdownMenuItem<String>(
// // //                     value: value,
// // //                     child: Text(value),
// // //                   );
// // //                 }).toList(),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               const Text('Negative Marking'),
// // //               DropdownButton<String>(
// // //                 value: _negativeMarking,
// // //                 onChanged: (String? newValue) {
// // //                   setState(() {
// // //                     _negativeMarking = newValue!;
// // //                   });
// // //                 },
// // //                 items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
// // //                     .map<DropdownMenuItem<String>>((String value) {
// // //                   return DropdownMenuItem<String>(
// // //                     value: value,
// // //                     child: Text(value),
// // //                   );
// // //                 }).toList(),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               ElevatedButton(
// // //                 onPressed: _addQuestion,
// // //                 child: const Text('Add Question'),
// // //               ),
// // //               const SizedBox(height: 20),
// // //               ListView.builder(
// // //                 shrinkWrap: true,
// // //                 physics: const NeverScrollableScrollPhysics(),
// // //                 itemCount: _questions.length,
// // //                 itemBuilder: (context, index) {
// // //                   final question = _questions[index];
// // //                   return Card(
// // //                     margin: const EdgeInsets.symmetric(vertical: 8),
// // //                     child: ListTile(
// // //                       title: Text(question['question']!),
// // //                       subtitle: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           Text('A: ${question['optionA']}'),
// // //                           Text('B: ${question['optionB']}'),
// // //                           Text('C: ${question['optionC']}'),
// // //                           Text('D: ${question['optionD']}'),
// // //                           Text('Correct: ${question['correctOption']}'),
// // //                           Text('Negative Marking: ${question['negativeMarking']}'),
// // //                         ],
// // //                       ),
// // //                       trailing: Row(
// // //                         mainAxisSize: MainAxisSize.min,
// // //                         children: [
// // //                           IconButton(
// // //                             icon: const Icon(Icons.edit),
// // //                             onPressed: () => _showEditDialog(index),
// // //                           ),
// // //                           IconButton(
// // //                             icon: const Icon(Icons.delete),
// // //                             onPressed: () => _deleteQuestion(index),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   );
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // import 'package:flutter/material.dart';
// // import 'shared_state.dart';
// //
// // class CreateExamPage extends StatefulWidget {
// //   final String examName;
// //   final String countdownTime;
// //   final List<Map<String, String>> questions;
// //
// //   const CreateExamPage({
// //     super.key,
// //     required this.examName,
// //     required this.countdownTime,
// //     required this.questions,
// //   });
// //
// //   @override
// //   State<CreateExamPage> createState() => _CreateExamPageState();
// // }
// //
// // class _CreateExamPageState extends State<CreateExamPage> {
// //   final TextEditingController _questionController = TextEditingController();
// //   final TextEditingController _optionAController = TextEditingController();
// //   final TextEditingController _optionBController = TextEditingController();
// //   final TextEditingController _optionCController = TextEditingController();
// //   final TextEditingController _optionDController = TextEditingController();
// //   String _correctOption = 'A';
// //   String _negativeMarking = '-0.25';
// //
// //   late List<Map<String, String>> _questions;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _questions = widget.questions;
// //   }
// //
// //   void _addQuestion() {
// //     setState(() {
// //       _questions.add({
// //         'question': _questionController.text,
// //         'optionA': _optionAController.text,
// //         'optionB': _optionBController.text,
// //         'optionC': _optionCController.text,
// //         'optionD': _optionDController.text,
// //         'correctOption': _correctOption,
// //         'negativeMarking': _negativeMarking,
// //       });
// //       _clearForm();
// //     });
// //     _updateSharedState();
// //   }
// //
// //   void _clearForm() {
// //     _questionController.clear();
// //     _optionAController.clear();
// //     _optionBController.clear();
// //     _optionCController.clear();
// //     _optionDController.clear();
// //     _correctOption = 'A';
// //     _negativeMarking = '-0.25';
// //   }
// //
// //   void _deleteQuestion(int index) {
// //     setState(() {
// //       _questions.removeAt(index);
// //     });
// //     _updateSharedState();
// //   }
// //
// //   void _updateQuestion(int index) {
// //     setState(() {
// //       _questions[index] = {
// //         'question': _questionController.text,
// //         'optionA': _optionAController.text,
// //         'optionB': _optionBController.text,
// //         'optionC': _optionCController.text,
// //         'optionD': _optionDController.text,
// //         'correctOption': _correctOption,
// //         'negativeMarking': _negativeMarking,
// //       };
// //       _clearForm();
// //     });
// //     _updateSharedState();
// //   }
// //
// //   void _showEditDialog(int index) {
// //     final question = _questions[index];
// //     _questionController.text = question['question']!;
// //     _optionAController.text = question['optionA']!;
// //     _optionBController.text = question['optionB']!;
// //     _optionCController.text = question['optionC']!;
// //     _optionDController.text = question['optionD']!;
// //     _correctOption = question['correctOption']!;
// //     _negativeMarking = question['negativeMarking']!;
// //
// //     showDialog(
// //       context: context,
// //       builder: (context) {
// //         return AlertDialog(
// //           title: const Text('Edit Question'),
// //           content: SingleChildScrollView(
// //             child: Column(
// //               children: [
// //                 TextField(
// //                   controller: _questionController,
// //                   decoration: const InputDecoration(labelText: 'Question'),
// //                 ),
// //                 TextField(
// //                   controller: _optionAController,
// //                   decoration: const InputDecoration(labelText: 'Option A'),
// //                 ),
// //                 TextField(
// //                   controller: _optionBController,
// //                   decoration: const InputDecoration(labelText: 'Option B'),
// //                 ),
// //                 TextField(
// //                   controller: _optionCController,
// //                   decoration: const InputDecoration(labelText: 'Option C'),
// //                 ),
// //                 TextField(
// //                   controller: _optionDController,
// //                   decoration: const InputDecoration(labelText: 'Option D'),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 const Text('Correct Option'),
// //                 DropdownButton<String>(
// //                   value: _correctOption,
// //                   onChanged: (String? newValue) {
// //                     setState(() {
// //                       _correctOption = newValue!;
// //                     });
// //                   },
// //                   items: <String>['A', 'B', 'C', 'D']
// //                       .map<DropdownMenuItem<String>>((String value) {
// //                     return DropdownMenuItem<String>(
// //                       value: value,
// //                       child: Text(value),
// //                     );
// //                   }).toList(),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 const Text('Negative Marking'),
// //                 DropdownButton<String>(
// //                   value: _negativeMarking,
// //                   onChanged: (String? newValue) {
// //                     setState(() {
// //                       _negativeMarking = newValue!;
// //                     });
// //                   },
// //                   items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
// //                       .map<DropdownMenuItem<String>>((String value) {
// //                     return DropdownMenuItem<String>(
// //                       value: value,
// //                       child: Text(value),
// //                     );
// //                   }).toList(),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           actions: [
// //             TextButton(
// //               onPressed: () {
// //                 _updateQuestion(index);
// //                 Navigator.of(context).pop();
// //               },
// //               child: const Text('Save'),
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
// //   void _updateSharedState() {
// //     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
// //     if (examIndex != -1) {
// //       SharedState.exams[examIndex]['questions'] = _questions;
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             children: [
// //               TextField(
// //                 controller: _questionController,
// //                 decoration: const InputDecoration(labelText: 'Question'),
// //               ),
// //               TextField(
// //                 controller: _optionAController,
// //                 decoration: const InputDecoration(labelText: 'Option A'),
// //               ),
// //               TextField(
// //                 controller: _optionBController,
// //                 decoration: const InputDecoration(labelText: 'Option B'),
// //               ),
// //               TextField(
// //                 controller: _optionCController,
// //                 decoration: const InputDecoration(labelText: 'Option C'),
// //               ),
// //               TextField(
// //                 controller: _optionDController,
// //                 decoration: const InputDecoration(labelText: 'Option D'),
// //               ),
// //               const SizedBox(height: 20),
// //               const Text('Correct Option'),
// //               DropdownButton<String>(
// //                 value: _correctOption,
// //                 onChanged: (String? newValue) {
// //                   setState(() {
// //                     _correctOption = newValue!;
// //                   });
// //                 },
// //                 items: <String>['A', 'B', 'C', 'D']
// //                     .map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //               ),
// //               const SizedBox(height: 20),
// //               const Text('Negative Marking'),
// //               DropdownButton<String>(
// //                 value: _negativeMarking,
// //                 onChanged: (String? newValue) {
// //                   setState(() {
// //                     _negativeMarking = newValue!;
// //                   });
// //                 },
// //                 items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
// //                     .map<DropdownMenuItem<String>>((String value) {
// //                   return DropdownMenuItem<String>(
// //                     value: value,
// //                     child: Text(value),
// //                   );
// //                 }).toList(),
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: _addQuestion,
// //                 child: const Text('Add Question'),
// //               ),
// //               const SizedBox(height: 20),
// //               ListView.builder(
// //                 shrinkWrap: true,
// //                 physics: const NeverScrollableScrollPhysics(),
// //                 itemCount: _questions.length,
// //                 itemBuilder: (context, index) {
// //                   final question = _questions[index];
// //                   return ListTile(
// //                     title: Text(question['question']!),
// //                     subtitle: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Text('A: ${question['optionA']}'),
// //                         Text('B: ${question['optionB']}'),
// //                         Text('C: ${question['optionC']}'),
// //                         Text('D: ${question['optionD']}'),
// //                         Text('Correct: ${question['correctOption']}'),
// //                         Text('Negative Marking: ${question['negativeMarking']}'),
// //                       ],
// //                     ),
// //                     trailing: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         IconButton(
// //                           icon: const Icon(Icons.edit),
// //                           onPressed: () => _showEditDialog(index),
// //                         ),
// //                         IconButton(
// //                           icon: const Icon(Icons.delete),
// //                           onPressed: () => _deleteQuestion(index),
// //                         ),
// //                       ],
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'shared_state.dart';
//
// class CreateExamPage extends StatefulWidget {
//   final String examName;
//   final String countdownTime;
//   final List<Map<String, String>> questions;
//
//   const CreateExamPage({
//     super.key,
//     required this.examName,
//     required this.countdownTime,
//     required this.questions,
//   });
//
//   @override
//   State<CreateExamPage> createState() => _CreateExamPageState();
// }
//
// class _CreateExamPageState extends State<CreateExamPage> {
//   final TextEditingController _questionController = TextEditingController();
//   final TextEditingController _optionAController = TextEditingController();
//   final TextEditingController _optionBController = TextEditingController();
//   final TextEditingController _optionCController = TextEditingController();
//   final TextEditingController _optionDController = TextEditingController();
//   String _correctOption = 'A';
//   String _negativeMarking = '-0.25';
//
//   late List<Map<String, String>> _questions;
//
//   @override
//   void initState() {
//     super.initState();
//     _questions = widget.questions;
//   }
//
//   void _addQuestion() {
//     setState(() {
//       _questions.add({
//         'question': _questionController.text,
//         'optionA': _optionAController.text,
//         'optionB': _optionBController.text,
//         'optionC': _optionCController.text,
//         'optionD': _optionDController.text,
//         'correctOption': _correctOption,
//         'negativeMarking': _negativeMarking,
//       });
//       _clearForm();
//     });
//     _updateSharedState();
//   }
//
//   void _clearForm() {
//     _questionController.clear();
//     _optionAController.clear();
//     _optionBController.clear();
//     _optionCController.clear();
//     _optionDController.clear();
//     _correctOption = 'A';
//     _negativeMarking = '-0.25';
//   }
//
//   void _deleteQuestion(int index) {
//     setState(() {
//       _questions.removeAt(index);
//     });
//     _updateSharedState();
//   }
//
//   void _updateQuestion(int index) {
//     setState(() {
//       _questions[index] = {
//         'question': _questionController.text,
//         'optionA': _optionAController.text,
//         'optionB': _optionBController.text,
//         'optionC': _optionCController.text,
//         'optionD': _optionDController.text,
//         'correctOption': _correctOption,
//         'negativeMarking': _negativeMarking,
//       };
//       _clearForm();
//     });
//     _updateSharedState();
//   }
//
//   void _showEditDialog(int index) {
//     final question = _questions[index];
//     _questionController.text = question['question']!;
//     _optionAController.text = question['optionA']!;
//     _optionBController.text = question['optionB']!;
//     _optionCController.text = question['optionC']!;
//     _optionDController.text = question['optionD']!;
//     _correctOption = question['correctOption']!;
//     _negativeMarking = question['negativeMarking']!;
//
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Edit Question'),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: _questionController,
//                   decoration: const InputDecoration(labelText: 'Question'),
//                 ),
//                 TextField(
//                   controller: _optionAController,
//                   decoration: const InputDecoration(labelText: 'Option A'),
//                 ),
//                 TextField(
//                   controller: _optionBController,
//                   decoration: const InputDecoration(labelText: 'Option B'),
//                 ),
//                 TextField(
//                   controller: _optionCController,
//                   decoration: const InputDecoration(labelText: 'Option C'),
//                 ),
//                 TextField(
//                   controller: _optionDController,
//                   decoration: const InputDecoration(labelText: 'Option D'),
//                 ),
//                 const SizedBox(height: 20),
//
//                 const Text('Correct Option'),
//                 DropdownButton<String>(
//                   value: _correctOption,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _correctOption = newValue!;
//                     });
//                   },
//                   items: <String>['A', 'B', 'C', 'D']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text('Negative Marking'),
//                 DropdownButton<String>(
//                   value: _negativeMarking,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       _negativeMarking = newValue!;
//                     });
//                   },
//                   items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 _updateQuestion(index);
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Save'),
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
//   void _updateSharedState() {
//     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
//     if (examIndex != -1) {
//       SharedState.exams[examIndex]['questions'] = _questions;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
//         backgroundColor: Color.fromRGBO(171, 178, 255, 1),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: _questionController,
//                 decoration: InputDecoration(
//                   labelText: 'Question',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionAController,
//                 decoration: InputDecoration(
//                   labelText: 'Option A',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionBController,
//                 decoration: InputDecoration(
//                   labelText: 'Option B',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionCController,
//                 decoration: InputDecoration(
//                   labelText: 'Option C',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionDController,
//                 decoration: InputDecoration(
//                   labelText: 'Option D',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const Text('Correct Option'),
//               DropdownButton<String>(
//                 value: _correctOption,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _correctOption = newValue!;
//                   });
//                 },
//                 items: <String>['A', 'B', 'C', 'D']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),
//               const Text('Negative Marking'),
//               DropdownButton<String>(
//                 value: _negativeMarking,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _negativeMarking = newValue!;
//                   });
//                 },
//                 items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
//                     .map<DropdownMenuItem<String>>((String value) {
//                   return DropdownMenuItem<String>(
//                     value: value,
//                     child: Text(value),
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _addQuestion,
//                 child: const Text('Add Question',style: TextStyle(
//                   color: Color.fromRGBO(255, 255, 255, 1.0)
//                 ),),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: _questions.length,
//                 itemBuilder: (context, index) {
//                   final question = _questions[index];
//                   return Card(
//                     color: Color.fromRGBO(255, 255, 255, 1.0),
//                     margin: const EdgeInsets.symmetric(vertical: 10),
//                     child: ListTile(
//                       title: Text(
//                         question['question']!,
//                         style: const TextStyle(
//
//                           fontWeight: FontWeight.bold,
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('A: ${question['optionA']}'),
//                           Text('B: ${question['optionB']}'),
//                           Text('C: ${question['optionC']}'),
//                           Text('D: ${question['optionD']}'),
//                           Text('Correct: ${question['correctOption']}'),
//                           Text('Negative Marking: ${question['negativeMarking']}'),
//                         ],
//                       ),
//                       trailing: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             icon: const Icon(Icons.edit, color: Colors.blue),
//                             onPressed: () => _showEditDialog(index),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.delete, color: Colors.red),
//                             onPressed: () => _deleteQuestion(index),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }









//
//
// import 'package:flutter/material.dart';
// import 'shared_state.dart';
//
// class CreateExamPage extends StatefulWidget {
//   final String examName;
//   final String countdownTime;
//   final List<Map<String, String>> questions;
//
//   const CreateExamPage({
//     super.key,
//     required this.examName,
//     required this.countdownTime,
//     required this.questions,
//   });
//
//   @override
//   State<CreateExamPage> createState() => _CreateExamPageState();
// }
//
// class _CreateExamPageState extends State<CreateExamPage> {
//   final TextEditingController _questionController = TextEditingController();
//   final TextEditingController _optionAController = TextEditingController();
//   final TextEditingController _optionBController = TextEditingController();
//   final TextEditingController _optionCController = TextEditingController();
//   final TextEditingController _optionDController = TextEditingController();
//   String _correctOption = 'A';
//   String _negativeMarking = '-0.25';
//
//   late List<Map<String, String>> _questions;
//
//   @override
//   void initState() {
//     super.initState();
//     _questions = widget.questions;
//   }
//
//   void _addQuestion() {
//     setState(() {
//       _questions.add({
//         'question': _questionController.text,
//         'optionA': _optionAController.text,
//         'optionB': _optionBController.text,
//         'optionC': _optionCController.text,
//         'optionD': _optionDController.text,
//         'correctOption': _correctOption,
//         'negativeMarking': _negativeMarking,
//       });
//       _clearForm();
//     });
//     _updateSharedState();
//   }
//
//   void _clearForm() {
//     _questionController.clear();
//     _optionAController.clear();
//     _optionBController.clear();
//     _optionCController.clear();
//     _optionDController.clear();
//     _correctOption = 'A';
//     _negativeMarking = '-0.25';
//   }
//
//   void _deleteQuestion(int index) {
//     setState(() {
//       _questions.removeAt(index);
//     });
//     _updateSharedState();
//   }
//
//   void _updateQuestion(int index) {
//     setState(() {
//       _questions[index] = {
//         'question': _questionController.text,
//         'optionA': _optionAController.text,
//         'optionB': _optionBController.text,
//         'optionC': _optionCController.text,
//         'optionD': _optionDController.text,
//         'correctOption': _correctOption,
//         'negativeMarking': _negativeMarking,
//       };
//       _clearForm();
//     });
//     _updateSharedState();
//   }
//
//   void _showEditDialog(int index) {
//     final question = _questions[index];
//     _questionController.text = question['question']!;
//     _optionAController.text = question['optionA']!;
//     _optionBController.text = question['optionB']!;
//     _optionCController.text = question['optionC']!;
//     _optionDController.text = question['optionD']!;
//     _correctOption = question['correctOption']!;
//     _negativeMarking = question['negativeMarking']!;
//
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Edit Question'),
//           content: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: _questionController,
//                   decoration: const InputDecoration(labelText: 'Question'),
//                 ),
//                 TextField(
//                   controller: _optionAController,
//                   decoration: const InputDecoration(labelText: 'Option A'),
//                 ),
//                 TextField(
//                   controller: _optionBController,
//                   decoration: const InputDecoration(labelText: 'Option B'),
//                 ),
//                 TextField(
//                   controller: _optionCController,
//                   decoration: const InputDecoration(labelText: 'Option C'),
//                 ),
//                 TextField(
//                   controller: _optionDController,
//                   decoration: const InputDecoration(labelText: 'Option D'),
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     const Text('Correct Option: '),
//                     DropdownButton<String>(
//                       value: _correctOption,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           _correctOption = newValue!;
//                         });
//                       },
//                       items: <String>['A', 'B', 'C', 'D']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20),
//                 Row(
//                   children: [
//                     const Text('Negative Marking: '),
//                     DropdownButton<String>(
//                       value: _negativeMarking,
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           _negativeMarking = newValue!;
//                         });
//                       },
//                       items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 _updateQuestion(index);
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Save'),
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
//   void _updateSharedState() {
//     final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
//     if (examIndex != -1) {
//       SharedState.exams[examIndex]['questions'] = _questions;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
//         backgroundColor: Color.fromRGBO(171, 178, 255, 1),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               TextField(
//                 controller: _questionController,
//                 decoration: InputDecoration(
//                   labelText: 'Question',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionAController,
//                 decoration: InputDecoration(
//                   labelText: 'Option A',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionBController,
//                 decoration: InputDecoration(
//                   labelText: 'Option B',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionCController,
//                 decoration: InputDecoration(
//                   labelText: 'Option C',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: _optionDController,
//                 decoration: InputDecoration(
//                   labelText: 'Option D',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   const Text('Correct Option: '),
//                   DropdownButton<String>(
//                     value: _correctOption,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _correctOption = newValue!;
//                       });
//                     },
//                     items: <String>['A', 'B', 'C', 'D']
//                         .map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 children: [
//                   const Text('Negative Marking: '),
//                   DropdownButton<String>(
//                     value: _negativeMarking,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _negativeMarking = newValue!;
//                       });
//                     },
//                     items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
//                         .map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       );
//                     }).toList(),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _addQuestion,
//                 child: const Text('Add Question',style: TextStyle(
//                     color: Color.fromRGBO(255, 255, 255, 1.0)
//                 ),),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: _questions.length,
//                 itemBuilder: (context, index) {
//                   final question = _questions[index];
//                   final colors = [Colors.lightBlue[50], Colors.lightGreen[50]];
//                   return Card(
//                     color: colors[index % colors.length],
//                     margin: const EdgeInsets.symmetric(vertical: 10),
//                     child: ListTile(
//                       title: Text(
//                         question['question']!,
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                       subtitle: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text('A: ${question['optionA']}'),
//                           Text('B: ${question['optionB']}'),
//                           Text('C: ${question['optionC']}'),
//                           Text('D: ${question['optionD']}'),
//                           Text('Correct: ${question['correctOption']}'),
//                           Text('Negative Marking: ${question['negativeMarking']}'),
//                         ],
//                       ),
//                       trailing: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           IconButton(
//                             icon: const Icon(Icons.edit, color: Colors.blue),
//                             onPressed: () => _showEditDialog(index),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.delete, color: Colors.red),
//                             onPressed: () => _deleteQuestion(index),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:excel/excel.dart';
import 'shared_state.dart';

class CreateExamPage extends StatefulWidget {
  final String examName;
  final String countdownTime;
  final List<Map<String, String>> questions;

  const CreateExamPage({
    super.key,
    required this.examName,
    required this.countdownTime,
    required this.questions,
  });

  @override
  State<CreateExamPage> createState() => _CreateExamPageState();
}

class _CreateExamPageState extends State<CreateExamPage> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _optionAController = TextEditingController();
  final TextEditingController _optionBController = TextEditingController();
  final TextEditingController _optionCController = TextEditingController();
  final TextEditingController _optionDController = TextEditingController();
  String _correctOption = 'A';
  String _negativeMarking = '-0.25';

  late List<Map<String, String>> _questions;

  @override
  void initState() {
    super.initState();
    _questions = widget.questions;
  }

  void _addQuestion() {
    setState(() {
      _questions.add({
        'question': _questionController.text,
        'optionA': _optionAController.text,
        'optionB': _optionBController.text,
        'optionC': _optionCController.text,
        'optionD': _optionDController.text,
        'correctOption': _correctOption,
        'negativeMarking': _negativeMarking,
      });
      _clearForm();
    });
    _updateSharedState();
  }

  void _clearForm() {
    _questionController.clear();
    _optionAController.clear();
    _optionBController.clear();
    _optionCController.clear();
    _optionDController.clear();
    _correctOption = 'A';
    _negativeMarking = '-0.25';
  }

  void _deleteQuestion(int index) {
    setState(() {
      _questions.removeAt(index);
    });
    _updateSharedState();
  }

  void _updateQuestion(int index) {
    setState(() {
      _questions[index] = {
        'question': _questionController.text,
        'optionA': _optionAController.text,
        'optionB': _optionBController.text,
        'optionC': _optionCController.text,
        'optionD': _optionDController.text,
        'correctOption': _correctOption,
        'negativeMarking': _negativeMarking,
      };
      _clearForm();
    });
    _updateSharedState();
  }

  void _showEditDialog(int index) {
    final question = _questions[index];
    _questionController.text = question['question']!;
    _optionAController.text = question['optionA']!;
    _optionBController.text = question['optionB']!;
    _optionCController.text = question['optionC']!;
    _optionDController.text = question['optionD']!;
    _correctOption = question['correctOption']!;
    _negativeMarking = question['negativeMarking']!;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Question'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: _questionController,
                  decoration: const InputDecoration(labelText: 'Question'),
                ),
                TextField(
                  controller: _optionAController,
                  decoration: const InputDecoration(labelText: 'Option A'),
                ),
                TextField(
                  controller: _optionBController,
                  decoration: const InputDecoration(labelText: 'Option B'),
                ),
                TextField(
                  controller: _optionCController,
                  decoration: const InputDecoration(labelText: 'Option C'),
                ),
                TextField(
                  controller: _optionDController,
                  decoration: const InputDecoration(labelText: 'Option D'),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('Correct Option: '),
                    DropdownButton<String>(
                      value: _correctOption,
                      onChanged: (String? newValue) {
                        setState(() {
                          _correctOption = newValue!;
                        });
                      },
                      items: <String>['A', 'B', 'C', 'D']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('Negative Marking: '),
                    DropdownButton<String>(
                      value: _negativeMarking,
                      onChanged: (String? newValue) {
                        setState(() {
                          _negativeMarking = newValue!;
                        });
                      },
                      items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _updateQuestion(index);
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
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

  void _updateSharedState() {
    final examIndex = SharedState.exams.indexWhere((exam) => exam['examName'] == widget.examName);
    if (examIndex != -1) {
      SharedState.exams[examIndex]['questions'] = _questions;
    }
  }

  Future<void> _importFromExcel() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null) {
      var bytes = result.files.single.bytes;
      if (bytes != null) {
        var excel = Excel.decodeBytes(bytes);

        for (var table in excel.tables.keys) {
          var sheet = excel.tables[table];
          for (var row in sheet!.rows.skip(1)) {
            setState(() {
              _questions.add({
                'question': row[0]?.value.toString() ?? '',
                'optionA': row[1]?.value.toString() ?? '',
                'optionB': row[2]?.value.toString() ?? '',
                'optionC': row[3]?.value.toString() ?? '',
                'optionD': row[4]?.value.toString() ?? '',
                'correctOption': row[5]?.value.toString() ?? 'A',
                'negativeMarking': row[6]?.value.toString() ?? '-0.25',
              });
            });
          }
        }
        _updateSharedState();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
        backgroundColor: Color.fromRGBO(171, 178, 255, 1),
        actions: [
          IconButton(
            icon: const Icon(Icons.insert_drive_file),
            onPressed: _importFromExcel,
            tooltip: 'Import from Excel',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _questionController,
                decoration: InputDecoration(
                  labelText: 'Question',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _optionAController,
                decoration: InputDecoration(
                  labelText: 'Option A',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _optionBController,
                decoration: InputDecoration(
                  labelText: 'Option B',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _optionCController,
                decoration: InputDecoration(
                  labelText: 'Option C',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _optionDController,
                decoration: InputDecoration(
                  labelText: 'Option D',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Correct Option: '),
                  DropdownButton<String>(
                    value: _correctOption,
                    onChanged: (String? newValue) {
                      setState(() {
                        _correctOption = newValue!;
                      });
                    },
                    items: <String>['A', 'B', 'C', 'D']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Negative Marking: '),
                  DropdownButton<String>(
                    value: _negativeMarking,
                    onChanged: (String? newValue) {
                      setState(() {
                        _negativeMarking = newValue!;
                      });
                    },
                    items: <String>['-0.25', '-0.30', '-0.50', '-0.70']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addQuestion,
                child: const Text('Add Question',style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0)
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  final question = _questions[index];
                  final colors = [Colors.lightBlue[50], Colors.lightGreen[50]];
                  return Card(
                    color: colors[index % colors.length],
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      title: Text(
                        question['question']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('A: ${question['optionA']}'),
                          Text('B: ${question['optionB']}'),
                          Text('C: ${question['optionC']}'),
                          Text('D: ${question['optionD']}'),
                          Text('Correct: ${question['correctOption']}'),
                          Text('Negative Marking: ${question['negativeMarking']}'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () => _showEditDialog(index),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () => _deleteQuestion(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}