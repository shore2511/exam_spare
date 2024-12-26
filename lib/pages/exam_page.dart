// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'dart:async';
// // // // // // //
// // // // // // // class ExamPage extends StatefulWidget {
// // // // // // //   final String examName;
// // // // // // //   final String countdownTime;
// // // // // // //   final List<Map<String, String>> questions;
// // // // // // //
// // // // // // //   const ExamPage({
// // // // // // //     super.key,
// // // // // // //     required this.examName,
// // // // // // //     required this.countdownTime,
// // // // // // //     required this.questions,
// // // // // // //   });
// // // // // // //
// // // // // // //   @override
// // // // // // //   State<ExamPage> createState() => _ExamPageState();
// // // // // // // }
// // // // // // //
// // // // // // // class _ExamPageState extends State<ExamPage> {
// // // // // // //   late Timer _timer;
// // // // // // //   late int _remainingTime;
// // // // // // //   int _score = 0;
// // // // // // //   final Map<int, String> _userAnswers = {};
// // // // // // //
// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _remainingTime = int.parse(widget.countdownTime) * 60;
// // // // // // //     _startTimer();
// // // // // // //   }
// // // // // // //
// // // // // // //   void _startTimer() {
// // // // // // //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// // // // // // //       setState(() {
// // // // // // //         if (_remainingTime > 0) {
// // // // // // //           _remainingTime--;
// // // // // // //         } else {
// // // // // // //           _timer.cancel();
// // // // // // //           _submitExam();
// // // // // // //         }
// // // // // // //       });
// // // // // // //     });
// // // // // // //   }
// // // // // // //
// // // // // // //   void _submitExam() {
// // // // // // //     _timer.cancel();
// // // // // // //     int correctAnswers = 0;
// // // // // // //     for (int i = 0; i < widget.questions.length; i++) {
// // // // // // //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// // // // // // //         correctAnswers++;
// // // // // // //       }
// // // // // // //     }
// // // // // // //     setState(() {
// // // // // // //       _score = correctAnswers;
// // // // // // //     });
// // // // // // //     _showResultDialog();
// // // // // // //   }
// // // // // // //
// // // // // // //   void _showResultDialog() {
// // // // // // //     showDialog(
// // // // // // //       context: context,
// // // // // // //       builder: (context) {
// // // // // // //         return AlertDialog(
// // // // // // //           title: const Text('Exam Result'),
// // // // // // //           content: Text('Your score: $_score/${widget.questions.length}'),
// // // // // // //           actions: [
// // // // // // //             TextButton(
// // // // // // //               onPressed: () {
// // // // // // //                 Navigator.of(context).pop();
// // // // // // //                 Navigator.of(context).pop();
// // // // // // //               },
// // // // // // //               child: const Text('OK'),
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         );
// // // // // // //       },
// // // // // // //     );
// // // // // // //   }
// // // // // // //
// // // // // // //   @override
// // // // // // //   void dispose() {
// // // // // // //     _timer.cancel();
// // // // // // //     super.dispose();
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
// // // // // // //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               ListView.builder(
// // // // // // //                 shrinkWrap: true,
// // // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // // //                 itemCount: widget.questions.length,
// // // // // // //                 itemBuilder: (context, index) {
// // // // // // //                   final question = widget.questions[index];
// // // // // // //                   return Column(
// // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                     children: [
// // // // // // //                       Text('Q${index + 1}: ${question['question']}'),
// // // // // // //                       RadioListTile<String>(
// // // // // // //                         title: Text('A: ${question['optionA']}'),
// // // // // // //                         value: 'A',
// // // // // // //                         groupValue: _userAnswers[index],
// // // // // // //                         onChanged: (value) {
// // // // // // //                           setState(() {
// // // // // // //                             _userAnswers[index] = value!;
// // // // // // //                           });
// // // // // // //                         },
// // // // // // //                       ),
// // // // // // //                       RadioListTile<String>(
// // // // // // //                         title: Text('B: ${question['optionB']}'),
// // // // // // //                         value: 'B',
// // // // // // //                         groupValue: _userAnswers[index],
// // // // // // //                         onChanged: (value) {
// // // // // // //                           setState(() {
// // // // // // //                             _userAnswers[index] = value!;
// // // // // // //                           });
// // // // // // //                         },
// // // // // // //                       ),
// // // // // // //                       RadioListTile<String>(
// // // // // // //                         title: Text('C: ${question['optionC']}'),
// // // // // // //                         value: 'C',
// // // // // // //                         groupValue: _userAnswers[index],
// // // // // // //                         onChanged: (value) {
// // // // // // //                           setState(() {
// // // // // // //                             _userAnswers[index] = value!;
// // // // // // //                           });
// // // // // // //                         },
// // // // // // //                       ),
// // // // // // //                       RadioListTile<String>(
// // // // // // //                         title: Text('D: ${question['optionD']}'),
// // // // // // //                         value: 'D',
// // // // // // //                         groupValue: _userAnswers[index],
// // // // // // //                         onChanged: (value) {
// // // // // // //                           setState(() {
// // // // // // //                             _userAnswers[index] = value!;
// // // // // // //                           });
// // // // // // //                         },
// // // // // // //                       ),
// // // // // // //                     ],
// // // // // // //                   );
// // // // // // //                 },
// // // // // // //               ),
// // // // // // //               const SizedBox(height: 20),
// // // // // // //               ElevatedButton(
// // // // // // //                 onPressed: _submitExam,
// // // // // // //                 child: const Text('Submit Exam'),
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
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'dart:async';
// // // // // //
// // // // // // class ExamPage extends StatefulWidget {
// // // // // //   final String examName;
// // // // // //   final String countdownTime;
// // // // // //   final List<Map<String, String>> questions;
// // // // // //
// // // // // //   const ExamPage({
// // // // // //     super.key,
// // // // // //     required this.examName,
// // // // // //     required this.countdownTime,
// // // // // //     required this.questions,
// // // // // //   });
// // // // // //
// // // // // //   @override
// // // // // //   State<ExamPage> createState() => _ExamPageState();
// // // // // // }
// // // // // //
// // // // // // class _ExamPageState extends State<ExamPage> {
// // // // // //   late Timer _timer;
// // // // // //   late int _remainingTime;
// // // // // //   int _score = 0;
// // // // // //   final Map<int, String> _userAnswers = {};
// // // // // //
// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     try {
// // // // // //       _remainingTime = int.parse(widget.countdownTime) * 60;
// // // // // //     } catch (e) {
// // // // // //       _remainingTime = 0; // Default to 0 if parsing fails
// // // // // //     }
// // // // // //     _startTimer();
// // // // // //   }
// // // // // //
// // // // // //   void _startTimer() {
// // // // // //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// // // // // //       setState(() {
// // // // // //         if (_remainingTime > 0) {
// // // // // //           _remainingTime--;
// // // // // //         } else {
// // // // // //           _timer.cancel();
// // // // // //           _submitExam();
// // // // // //         }
// // // // // //       });
// // // // // //     });
// // // // // //   }
// // // // // //
// // // // // //   void _submitExam() {
// // // // // //     _timer.cancel();
// // // // // //     int correctAnswers = 0;
// // // // // //     for (int i = 0; i < widget.questions.length; i++) {
// // // // // //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// // // // // //         correctAnswers++;
// // // // // //       }
// // // // // //     }
// // // // // //     setState(() {
// // // // // //       _score = correctAnswers;
// // // // // //     });
// // // // // //     _showResultDialog();
// // // // // //   }
// // // // // //
// // // // // //   void _showResultDialog() {
// // // // // //     showDialog(
// // // // // //       context: context,
// // // // // //       builder: (context) {
// // // // // //         return AlertDialog(
// // // // // //           title: const Text('Exam Result'),
// // // // // //           content: Text('Your score: $_score/${widget.questions.length}'),
// // // // // //           actions: [
// // // // // //             TextButton(
// // // // // //               onPressed: () {
// // // // // //                 Navigator.of(context).pop();
// // // // // //                 Navigator.of(context).pop();
// // // // // //               },
// // // // // //               child: const Text('OK'),
// // // // // //             ),
// // // // // //           ],
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }
// // // // // //
// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _timer.cancel();
// // // // // //     super.dispose();
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
// // // // // //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// // // // // //               const SizedBox(height: 20),
// // // // // //               ListView.builder(
// // // // // //                 shrinkWrap: true,
// // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // //                 itemCount: widget.questions.length,
// // // // // //                 itemBuilder: (context, index) {
// // // // // //                   final question = widget.questions[index];
// // // // // //                   return Column(
// // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                     children: [
// // // // // //                       Text('Q${index + 1}: ${question['question']}'),
// // // // // //                       RadioListTile<String>(
// // // // // //                         title: Text('A: ${question['optionA']}'),
// // // // // //                         value: 'A',
// // // // // //                         groupValue: _userAnswers[index],
// // // // // //                         onChanged: (value) {
// // // // // //                           setState(() {
// // // // // //                             _userAnswers[index] = value!;
// // // // // //                           });
// // // // // //                         },
// // // // // //                       ),
// // // // // //                       RadioListTile<String>(
// // // // // //                         title: Text('B: ${question['optionB']}'),
// // // // // //                         value: 'B',
// // // // // //                         groupValue: _userAnswers[index],
// // // // // //                         onChanged: (value) {
// // // // // //                           setState(() {
// // // // // //                             _userAnswers[index] = value!;
// // // // // //                           });
// // // // // //                         },
// // // // // //                       ),
// // // // // //                       RadioListTile<String>(
// // // // // //                         title: Text('C: ${question['optionC']}'),
// // // // // //                         value: 'C',
// // // // // //                         groupValue: _userAnswers[index],
// // // // // //                         onChanged: (value) {
// // // // // //                           setState(() {
// // // // // //                             _userAnswers[index] = value!;
// // // // // //                           });
// // // // // //                         },
// // // // // //                       ),
// // // // // //                       RadioListTile<String>(
// // // // // //                         title: Text('D: ${question['optionD']}'),
// // // // // //                         value: 'D',
// // // // // //                         groupValue: _userAnswers[index],
// // // // // //                         onChanged: (value) {
// // // // // //                           setState(() {
// // // // // //                             _userAnswers[index] = value!;
// // // // // //                           });
// // // // // //                         },
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   );
// // // // // //                 },
// // // // // //               ),
// // // // // //               const SizedBox(height: 20),
// // // // // //               ElevatedButton(
// // // // // //                 onPressed: _submitExam,
// // // // // //                 child: const Text('Submit Exam'),
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
// // // // //
// // // // //
// // // // // import 'package:flutter/material.dart';
// // // // // import 'dart:async';
// // // // //
// // // // // class ExamPage extends StatefulWidget {
// // // // //   final String examName;
// // // // //   final String countdownTime;
// // // // //   final List<Map<String, String>> questions;
// // // // //
// // // // //   const ExamPage({
// // // // //     super.key,
// // // // //     required this.examName,
// // // // //     required this.countdownTime,
// // // // //     required this.questions,
// // // // //   });
// // // // //
// // // // //   @override
// // // // //   State<ExamPage> createState() => _ExamPageState();
// // // // // }
// // // // //
// // // // // class _ExamPageState extends State<ExamPage> {
// // // // //   late Timer _timer;
// // // // //   late int _remainingTime;
// // // // //   int _score = 0;
// // // // //   final Map<int, String> _userAnswers = {};
// // // // //
// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     try {
// // // // //       _remainingTime = int.parse(widget.countdownTime) * 60;
// // // // //     } catch (e) {
// // // // //       _remainingTime = 0; // Default to 0 if parsing fails
// // // // //     }
// // // // //     _startTimer();
// // // // //   }
// // // // //
// // // // //   void _startTimer() {
// // // // //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// // // // //       setState(() {
// // // // //         if (_remainingTime > 0) {
// // // // //           _remainingTime--;
// // // // //         } else {
// // // // //           _timer.cancel();
// // // // //           _submitExam();
// // // // //         }
// // // // //       });
// // // // //     });
// // // // //   }
// // // // //
// // // // //   void _submitExam() {
// // // // //     _timer.cancel();
// // // // //     int correctAnswers = 0;
// // // // //     for (int i = 0; i < widget.questions.length; i++) {
// // // // //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// // // // //         correctAnswers++;
// // // // //       }
// // // // //     }
// // // // //     setState(() {
// // // // //       _score = correctAnswers;
// // // // //     });
// // // // //     _showResultDialog();
// // // // //   }
// // // // //
// // // // //   void _showResultDialog() {
// // // // //     showDialog(
// // // // //       context: context,
// // // // //       builder: (context) {
// // // // //         return AlertDialog(
// // // // //           title: const Text('Exam Result'),
// // // // //           content: Text('Your score: $_score/${widget.questions.length}'),
// // // // //           actions: [
// // // // //             TextButton(
// // // // //               onPressed: () {
// // // // //                 Navigator.of(context).pop();
// // // // //                 Navigator.of(context).pop();
// // // // //               },
// // // // //               child: const Text('OK'),
// // // // //             ),
// // // // //           ],
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }
// // // // //
// // // // //   @override
// // // // //   void dispose() {
// // // // //     _timer.cancel();
// // // // //     super.dispose();
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
// // // // //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// // // // //               const SizedBox(height: 20),
// // // // //               ListView.builder(
// // // // //                 shrinkWrap: true,
// // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // //                 itemCount: widget.questions.length,
// // // // //                 itemBuilder: (context, index) {
// // // // //                   final question = widget.questions[index];
// // // // //                   return Column(
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Text('Q${index + 1}: ${question['question']}'),
// // // // //                       RadioListTile<String>(
// // // // //                         title: Text('A: ${question['optionA']}'),
// // // // //                         value: 'A',
// // // // //                         groupValue: _userAnswers[index],
// // // // //                         onChanged: (value) {
// // // // //                           setState(() {
// // // // //                             _userAnswers[index] = value!;
// // // // //                           });
// // // // //                         },
// // // // //                       ),
// // // // //                       RadioListTile<String>(
// // // // //                         title: Text('B: ${question['optionB']}'),
// // // // //                         value: 'B',
// // // // //                         groupValue: _userAnswers[index],
// // // // //                         onChanged: (value) {
// // // // //                           setState(() {
// // // // //                             _userAnswers[index] = value!;
// // // // //                           });
// // // // //                         },
// // // // //                       ),
// // // // //                       RadioListTile<String>(
// // // // //                         title: Text('C: ${question['optionC']}'),
// // // // //                         value: 'C',
// // // // //                         groupValue: _userAnswers[index],
// // // // //                         onChanged: (value) {
// // // // //                           setState(() {
// // // // //                             _userAnswers[index] = value!;
// // // // //                           });
// // // // //                         },
// // // // //                       ),
// // // // //                       RadioListTile<String>(
// // // // //                         title: Text('D: ${question['optionD']}'),
// // // // //                         value: 'D',
// // // // //                         groupValue: _userAnswers[index],
// // // // //                         onChanged: (value) {
// // // // //                           setState(() {
// // // // //                             _userAnswers[index] = value!;
// // // // //                           });
// // // // //                         },
// // // // //                       ),
// // // // //                     ],
// // // // //                   );
// // // // //                 },
// // // // //               ),
// // // // //               const SizedBox(height: 20),
// // // // //               ElevatedButton(
// // // // //                 onPressed: _submitExam,
// // // // //                 child: const Text('Submit Exam'),
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
// // // // import 'package:flutter/material.dart';
// // // // import 'dart:async';
// // // //
// // // // class ExamPage extends StatefulWidget {
// // // //   final String examName;
// // // //   final String countdownTime;
// // // //   final List<Map<String, String>> questions;
// // // //
// // // //   const ExamPage({
// // // //     super.key,
// // // //     required this.examName,
// // // //     required this.countdownTime,
// // // //     required this.questions,
// // // //   });
// // // //
// // // //   @override
// // // //   State<ExamPage> createState() => _ExamPageState();
// // // // }
// // // //
// // // // class _ExamPageState extends State<ExamPage> {
// // // //   late Timer _timer;
// // // //   late int _remainingTime;
// // // //   double _score = 0;
// // // //   final Map<int, String> _userAnswers = {};
// // // //
// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     try {
// // // //       _remainingTime = int.parse(widget.countdownTime) * 60;
// // // //     } catch (e) {
// // // //       _remainingTime = 0; // Default to 0 if parsing fails
// // // //     }
// // // //     _startTimer();
// // // //   }
// // // //
// // // //   void _startTimer() {
// // // //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// // // //       setState(() {
// // // //         if (_remainingTime > 0) {
// // // //           _remainingTime--;
// // // //         } else {
// // // //           _timer.cancel();
// // // //           _submitExam();
// // // //         }
// // // //       });
// // // //     });
// // // //   }
// // // //
// // // //   void _submitExam() {
// // // //     _timer.cancel();
// // // //     double correctAnswers = 0;
// // // //     double totalQuestions = widget.questions.length.toDouble();
// // // //     for (int i = 0; i < widget.questions.length; i++) {
// // // //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// // // //         correctAnswers++;
// // // //       } else if (_userAnswers[i] != null) {
// // // //         correctAnswers -= double.parse(widget.questions[i]['negativeMarking']!);
// // // //       }
// // // //     }
// // // //     setState(() {
// // // //       _score = (correctAnswers / totalQuestions) * 100;
// // // //     });
// // // //     _showResultDialog();
// // // //   }
// // // //
// // // //   void _showResultDialog() {
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) {
// // // //         return AlertDialog(
// // // //           title: const Text('Exam Result'),
// // // //           content: Text('Your score: ${_score.toStringAsFixed(2)}%'),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () {
// // // //                 Navigator.of(context).pop();
// // // //                 Navigator.of(context).pop();
// // // //               },
// // // //               child: const Text('OK'),
// // // //             ),
// // // //           ],
// // // //         );
// // // //       },
// // // //     );
// // // //   }
// // // //
// // // //   @override
// // // //   void dispose() {
// // // //     _timer.cancel();
// // // //     super.dispose();
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
// // // //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// // // //               const SizedBox(height: 20),
// // // //               ListView.builder(
// // // //                 shrinkWrap: true,
// // // //                 physics: const NeverScrollableScrollPhysics(),
// // // //                 itemCount: widget.questions.length,
// // // //                 itemBuilder: (context, index) {
// // // //                   final question = widget.questions[index];
// // // //                   return Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Text('Q${index + 1}: ${question['question']}'),
// // // //                       RadioListTile<String>(
// // // //                         title: Text('A: ${question['optionA']}'),
// // // //                         value: 'A',
// // // //                         groupValue: _userAnswers[index],
// // // //                         onChanged: (value) {
// // // //                           setState(() {
// // // //                             _userAnswers[index] = value!;
// // // //                           });
// // // //                         },
// // // //                       ),
// // // //                       RadioListTile<String>(
// // // //                         title: Text('B: ${question['optionB']}'),
// // // //                         value: 'B',
// // // //                         groupValue: _userAnswers[index],
// // // //                         onChanged: (value) {
// // // //                           setState(() {
// // // //                             _userAnswers[index] = value!;
// // // //                           });
// // // //                         },
// // // //                       ),
// // // //                       RadioListTile<String>(
// // // //                         title: Text('C: ${question['optionC']}'),
// // // //                         value: 'C',
// // // //                         groupValue: _userAnswers[index],
// // // //                         onChanged: (value) {
// // // //                           setState(() {
// // // //                             _userAnswers[index] = value!;
// // // //                           });
// // // //                         },
// // // //                       ),
// // // //                       RadioListTile<String>(
// // // //                         title: Text('D: ${question['optionD']}'),
// // // //                         value: 'D',
// // // //                         groupValue: _userAnswers[index],
// // // //                         onChanged: (value) {
// // // //                           setState(() {
// // // //                             _userAnswers[index] = value!;
// // // //                           });
// // // //                         },
// // // //                       ),
// // // //                     ],
// // // //                   );
// // // //                 },
// // // //               ),
// // // //               const SizedBox(height: 20),
// // // //               ElevatedButton(
// // // //                 onPressed: _submitExam,
// // // //                 child: const Text('Submit Exam'),
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
// // //
// // // import 'package:flutter/material.dart';
// // // import 'dart:async';
// // // import 'package:pdf/pdf.dart';
// // // import 'package:pdf/widgets.dart' as pw;
// // // import 'package:printing/printing.dart';
// // //
// // // class ExamPage extends StatefulWidget {
// // //   final String examName;
// // //   final String countdownTime;
// // //   final List<Map<String, String>> questions;
// // //
// // //   const ExamPage({
// // //     super.key,
// // //     required this.examName,
// // //     required this.countdownTime,
// // //     required this.questions,
// // //   });
// // //
// // //   @override
// // //   State<ExamPage> createState() => _ExamPageState();
// // // }
// // //
// // // class _ExamPageState extends State<ExamPage> {
// // //   late Timer _timer;
// // //   late int _remainingTime;
// // //   double _score = 0;
// // //   final Map<int, String> _userAnswers = {};
// // //
// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     try {
// // //       _remainingTime = int.parse(widget.countdownTime) * 60;
// // //     } catch (e) {
// // //       _remainingTime = 0; // Default to 0 if parsing fails
// // //     }
// // //     _startTimer();
// // //   }
// // //
// // //   void _startTimer() {
// // //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// // //       setState(() {
// // //         if (_remainingTime > 0) {
// // //           _remainingTime--;
// // //         } else {
// // //           _timer.cancel();
// // //           _submitExam();
// // //         }
// // //       });
// // //     });
// // //   }
// // //
// // //   void _submitExam() {
// // //     _timer.cancel();
// // //     double correctAnswers = 0;
// // //     double totalQuestions = widget.questions.length.toDouble();
// // //     for (int i = 0; i < widget.questions.length; i++) {
// // //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// // //         correctAnswers++;
// // //       } else if (_userAnswers[i] != null) {
// // //         correctAnswers -= double.parse(widget.questions[i]['negativeMarking']!);
// // //       }
// // //     }
// // //     setState(() {
// // //       _score = (correctAnswers / totalQuestions) * 100;
// // //     });
// // //     _showResultDialog();
// // //   }
// // //
// // //   void _showResultDialog() {
// // //     showDialog(
// // //       context: context,
// // //       builder: (context) {
// // //         return AlertDialog(
// // //           title: const Text('Exam Result'),
// // //           content: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               Text('Your score: ${_score.toStringAsFixed(2)}%'),
// // //               const SizedBox(height: 20),
// // //               IconButton(
// // //                 icon: const Icon(Icons.picture_as_pdf),
// // //                 onPressed: _previewCertificate,
// // //                 tooltip: 'Preview Certificate',
// // //               ),
// // //             ],
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () {
// // //                 Navigator.of(context).pop();
// // //                 Navigator.of(context).pop();
// // //               },
// // //               child: const Text('OK'),
// // //             ),
// // //           ],
// // //         );
// // //       },
// // //     );
// // //   }
// // //
// // //   Future<void> _previewCertificate() async {
// // //     final pdf = await _generateCertificate();
// // //
// // //     Navigator.of(context).push(
// // //       MaterialPageRoute(
// // //         builder: (context) => Scaffold(
// // //           appBar: AppBar(
// // //             title: const Text('Certificate Preview'),
// // //           ),
// // //           body: PdfPreview(
// // //             build: (format) => pdf.save(),
// // //             actions: [
// // //               PdfPreviewAction(
// // //                 icon: const Icon(Icons.download),
// // //                 onPressed: (context, build, pageFormat) async {
// // //                   await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // //
// // //   Future<pw.Document> _generateCertificate() async {
// // //     final pdf = pw.Document();
// // //     final image = await imageFromAssetBundle('assets/images/logo.png');
// // //
// // //     pdf.addPage(
// // //       pw.Page(
// // //         build: (pw.Context context) {
// // //           return pw.Center(
// // //             child: pw.Column(
// // //               mainAxisAlignment: pw.MainAxisAlignment.center,
// // //               children: [
// // //                 pw.Image(image, width: 100, height: 100),
// // //                 pw.SizedBox(height: 20),
// // //                 pw.Text(
// // //                   'Certificate of Completion',
// // //                   style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
// // //                 ),
// // //                 pw.SizedBox(height: 20),
// // //                 pw.Text(
// // //                   'This is to certify that',
// // //                   style: pw.TextStyle(fontSize: 18),
// // //                 ),
// // //                 pw.SizedBox(height: 10),
// // //                 pw.Text(
// // //                   'SHAHIL SIDDHANT',
// // //                   style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold),
// // //                 ),
// // //                 pw.SizedBox(height: 10),
// // //                 pw.Text(
// // //                   'has successfully completed the exam',
// // //                   style: pw.TextStyle(fontSize: 18),
// // //                 ),
// // //                 pw.SizedBox(height: 10),
// // //                 pw.Text(
// // //                   widget.examName,
// // //                   style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
// // //                 ),
// // //                 pw.SizedBox(height: 10),
// // //                 pw.Text(
// // //                   'with a score of ${_score.toStringAsFixed(2)}%',
// // //                   style: pw.TextStyle(fontSize: 18),
// // //                 ),
// // //                 pw.SizedBox(height: 20),
// // //                 pw.Text(
// // //                   'Exam Time: ${widget.countdownTime} minutes',
// // //                   style: pw.TextStyle(fontSize: 16),
// // //                 ),
// // //                 pw.SizedBox(height: 20),
// // //                 pw.Text(
// // //                   'ExamSphere',
// // //                   style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
// // //                 ),
// // //               ],
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //
// // //     return pdf;
// // //   }
// // //
// // //   @override
// // //   void dispose() {
// // //     _timer.cancel();
// // //     super.dispose();
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
// // //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// // //               const SizedBox(height: 20),
// // //               ListView.builder(
// // //                 shrinkWrap: true,
// // //                 physics: const NeverScrollableScrollPhysics(),
// // //                 itemCount: widget.questions.length,
// // //                 itemBuilder: (context, index) {
// // //                   final question = widget.questions[index];
// // //                   return Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Text('Q${index + 1}: ${question['question']}'),
// // //                       RadioListTile<String>(
// // //                         title: Text('A: ${question['optionA']}'),
// // //                         value: 'A',
// // //                         groupValue: _userAnswers[index],
// // //                         onChanged: (value) {
// // //                           setState(() {
// // //                             _userAnswers[index] = value!;
// // //                           });
// // //                         },
// // //                       ),
// // //                       RadioListTile<String>(
// // //                         title: Text('B: ${question['optionB']}'),
// // //                         value: 'B',
// // //                         groupValue: _userAnswers[index],
// // //                         onChanged: (value) {
// // //                           setState(() {
// // //                             _userAnswers[index] = value!;
// // //                           });
// // //                         },
// // //                       ),
// // //                       RadioListTile<String>(
// // //                         title: Text('C: ${question['optionC']}'),
// // //                         value: 'C',
// // //                         groupValue: _userAnswers[index],
// // //                         onChanged: (value) {
// // //                           setState(() {
// // //                             _userAnswers[index] = value!;
// // //                           });
// // //                         },
// // //                       ),
// // //                       RadioListTile<String>(
// // //                         title: Text('D: ${question['optionD']}'),
// // //                         value: 'D',
// // //                         groupValue: _userAnswers[index],
// // //                         onChanged: (value) {
// // //                           setState(() {
// // //                             _userAnswers[index] = value!;
// // //                           });
// // //                         },
// // //                       ),
// // //                     ],
// // //                   );
// // //                 },
// // //               ),
// // //               const SizedBox(height: 20),
// // //               ElevatedButton(
// // //                 onPressed: _submitExam,
// // //                 child: const Text('Submit Exam'),
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
// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // import 'package:pdf/pdf.dart';
// // import 'package:pdf/widgets.dart' as pw;
// // import 'package:printing/printing.dart';
// //
// // class ExamPage extends StatefulWidget {
// //   final String examName;
// //   final String countdownTime;
// //   final List<Map<String, String>> questions;
// //
// //   const ExamPage({
// //     super.key,
// //     required this.examName,
// //     required this.countdownTime,
// //     required this.questions,
// //   });
// //
// //   @override
// //   State<ExamPage> createState() => _ExamPageState();
// // }
// //
// // class _ExamPageState extends State<ExamPage> {
// //   late Timer _timer;
// //   late int _remainingTime;
// //   double _score = 0;
// //   final Map<int, String> _userAnswers = {};
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     try {
// //       _remainingTime = int.parse(widget.countdownTime) * 60;
// //     } catch (e) {
// //       _remainingTime = 0; // Default to 0 if parsing fails
// //     }
// //     _startTimer();
// //   }
// //
// //   void _startTimer() {
// //     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
// //       setState(() {
// //         if (_remainingTime > 0) {
// //           _remainingTime--;
// //         } else {
// //           _timer.cancel();
// //           _submitExam();
// //         }
// //       });
// //     });
// //   }
// //
// //   void _submitExam() {
// //     _timer.cancel();
// //     double correctAnswers = 0;
// //     double totalQuestions = widget.questions.length.toDouble();
// //     for (int i = 0; i < widget.questions.length; i++) {
// //       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
// //         correctAnswers++;
// //       } else if (_userAnswers[i] != null) {
// //         correctAnswers -= double.parse(widget.questions[i]['negativeMarking']!);
// //       }
// //     }
// //     setState(() {
// //       _score = (correctAnswers / totalQuestions) * 100;
// //     });
// //     _showResultDialog();
// //   }
// //
// //   void _showResultDialog() {
// //     showDialog(
// //       context: context,
// //       builder: (context) {
// //         return AlertDialog(
// //           title: const Text('Exam Result'),
// //           content: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               Text('Your score: ${_score.toStringAsFixed(2)}%'),
// //               const SizedBox(height: 20),
// //               IconButton(
// //                 icon: const Icon(Icons.picture_as_pdf),
// //                 onPressed: _previewCertificate,
// //                 tooltip: 'Preview Certificate',
// //               ),
// //             ],
// //           ),
// //           actions: [
// //             TextButton(
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //                 Navigator.of(context).pop();
// //               },
// //               child: const Text('OK'),
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
// //
// //   Future<void> _previewCertificate() async {
// //     final pdf = await _generateCertificate();
// //
// //     Navigator.of(context).push(
// //       MaterialPageRoute(
// //         builder: (context) => Scaffold(
// //           appBar: AppBar(
// //             title: const Text('Certificate Preview'),
// //           ),
// //           body: PdfPreview(
// //             build: (format) => pdf.save(),
// //             actions: [
// //               PdfPreviewAction(
// //                 icon: const Icon(Icons.download),
// //                 onPressed: (context, build, pageFormat) async {
// //                   await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Future<pw.Document> _generateCertificate() async {
// //     final pdf = pw.Document();
// //     final image = await imageFromAssetBundle('assets/images/logo.png');
// //
// //     pdf.addPage(
// //       pw.Page(
// //         build: (pw.Context context) {
// //           return pw.Center(
// //             child: pw.Column(
// //               mainAxisAlignment: pw.MainAxisAlignment.center,
// //               children: [
// //                 pw.Image(image, width: 100, height: 100),
// //                 pw.SizedBox(height: 20),
// //                 pw.Text(
// //                   'Certificate of Completion',
// //                   style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
// //                 ),
// //                 pw.SizedBox(height: 20),
// //                 pw.Text(
// //                   'This is to certify that',
// //                   style: pw.TextStyle(fontSize: 18),
// //                 ),
// //                 pw.SizedBox(height: 10),
// //                 pw.Text(
// //                   'SHAHIL SIDDHANT',
// //                   style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold),
// //                 ),
// //                 pw.SizedBox(height: 10),
// //                 pw.Text(
// //                   'has successfully completed the exam',
// //                   style: pw.TextStyle(fontSize: 18),
// //                 ),
// //                 pw.SizedBox(height: 10),
// //                 pw.Text(
// //                   widget.examName,
// //                   style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
// //                 ),
// //                 pw.SizedBox(height: 10),
// //                 pw.Text(
// //                   'with a score of ${_score.toStringAsFixed(2)}%',
// //                   style: pw.TextStyle(fontSize: 18),
// //                 ),
// //                 pw.SizedBox(height: 20),
// //                 pw.Text(
// //                   'Exam Time: ${widget.countdownTime} minutes',
// //                   style: pw.TextStyle(fontSize: 16),
// //                 ),
// //                 pw.SizedBox(height: 20),
// //                 pw.Text(
// //                   'ExamSphere',
// //                   style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //
// //     return pdf;
// //   }
// //
// //   @override
// //   void dispose() {
// //     _timer.cancel();
// //     super.dispose();
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
// //               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
// //               const SizedBox(height: 20),
// //               ListView.builder(
// //                 shrinkWrap: true,
// //                 physics: const NeverScrollableScrollPhysics(),
// //                 itemCount: widget.questions.length,
// //                 itemBuilder: (context, index) {
// //                   final question = widget.questions[index];
// //                   return Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Text('Q${index + 1}: ${question['question']}'),
// //                       RadioListTile<String>(
// //                         title: Text('A: ${question['optionA']}'),
// //                         value: 'A',
// //                         groupValue: _userAnswers[index],
// //                         onChanged: (value) {
// //                           setState(() {
// //                             _userAnswers[index] = value!;
// //                           });
// //                         },
// //                       ),
// //                       RadioListTile<String>(
// //                         title: Text('B: ${question['optionB']}'),
// //                         value: 'B',
// //                         groupValue: _userAnswers[index],
// //                         onChanged: (value) {
// //                           setState(() {
// //                             _userAnswers[index] = value!;
// //                           });
// //                         },
// //                       ),
// //                       RadioListTile<String>(
// //                         title: Text('C: ${question['optionC']}'),
// //                         value: 'C',
// //                         groupValue: _userAnswers[index],
// //                         onChanged: (value) {
// //                           setState(() {
// //                             _userAnswers[index] = value!;
// //                           });
// //                         },
// //                       ),
// //                       RadioListTile<String>(
// //                         title: Text('D: ${question['optionD']}'),
// //                         value: 'D',
// //                         groupValue: _userAnswers[index],
// //                         onChanged: (value) {
// //                           setState(() {
// //                             _userAnswers[index] = value!;
// //                           });
// //                         },
// //                       ),
// //                     ],
// //                   );
// //                 },
// //               ),
// //               const SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: _submitExam,
// //                 child: const Text('Submit Exam'),
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
//
//
//
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
//
// class ExamPage extends StatefulWidget {
//   final String examName;
//   final String countdownTime;
//   final List<Map<String, String>> questions;
//
//   const ExamPage({
//     super.key,
//     required this.examName,
//     required this.countdownTime,
//     required this.questions,
//   });
//
//   @override
//   State<ExamPage> createState() => _ExamPageState();
// }
//
// class _ExamPageState extends State<ExamPage> {
//   late Timer _timer;
//   late int _remainingTime;
//   double _score = 0;
//   final Map<int, String> _userAnswers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     try {
//       _remainingTime = int.parse(widget.countdownTime) * 60;
//     } catch (e) {
//       _remainingTime = 0; // Default to 0 if parsing fails
//     }
//     _startTimer();
//   }
//
//   void _startTimer() {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         if (_remainingTime > 0) {
//           _remainingTime--;
//         } else {
//           _timer.cancel();
//           _submitExam();
//         }
//       });
//     });
//   }
//
//   void _submitExam() {
//     _timer.cancel();
//     double correctAnswers = 0;
//     double totalQuestions = widget.questions.length.toDouble();
//     for (int i = 0; i < widget.questions.length; i++) {
//       if (_userAnswers[i] == widget.questions[i]['correctOption']) {
//         correctAnswers++;
//       } else if (_userAnswers[i] != null) {
//         correctAnswers -= double.parse(widget.questions[i]['negativeMarking']!);
//       }
//     }
//     setState(() {
//       _score = (correctAnswers / totalQuestions) * 100;
//     });
//     _showResultDialog();
//   }
//
//   void _showResultDialog() {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Exam Result'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text('Your score: ${_score.toStringAsFixed(2)}%'),
//               const SizedBox(height: 20),
//               IconButton(
//                 icon: const Icon(Icons.picture_as_pdf),
//                 onPressed: _previewCertificate,
//                 tooltip: 'Preview Certificate',
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 Navigator.of(context).pop();
//               },
//               child: const Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   Future<void> _previewCertificate() async {
//     final pdf = await _generateCertificate();
//
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => Scaffold(
//           appBar: AppBar(
//             title: const Text('Certificate Preview'),
//           ),
//           body: PdfPreview(
//             build: (format) => pdf.save(),
//             actions: [
//               PdfPreviewAction(
//                 icon: const Icon(Icons.download),
//                 onPressed: (context, build, pageFormat) async {
//                   await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Future<pw.Document> _generateCertificate() async {
//     final pdf = pw.Document();
//     final image = await imageFromAssetBundle('assets/images/logo.png');
//
//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4.landscape,
//         build: (pw.Context context) {
//           return pw.Container(
//             decoration: pw.BoxDecoration(
//               border: pw.Border.all(color: PdfColors.purple, width: 4),
//             ),
//             padding: const pw.EdgeInsets.all(32),
//             child: pw.Center(
//               child: pw.Column(
//                 mainAxisAlignment: pw.MainAxisAlignment.center,
//                 children: [
//                   pw.Image(image, width: 100, height: 100),
//                   pw.SizedBox(height: 20),
//                   pw.Text(
//                     'Certificate of Completion',
//                     style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
//                   ),
//                   pw.SizedBox(height: 20),
//                   pw.Text(
//                     'This is to certify that',
//                     style: pw.TextStyle(fontSize: 18),
//                   ),
//                   pw.SizedBox(height: 10),
//                   pw.Text(
//                     'SHAHIL SIDDHANT',
//                     style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold),
//                   ),
//                   pw.SizedBox(height: 10),
//                   pw.Text(
//                     'has successfully completed the exam',
//                     style: pw.TextStyle(fontSize: 18),
//                   ),
//                   pw.SizedBox(height: 10),
//                   pw.Text(
//                     widget.examName,
//                     style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
//                   ),
//                   pw.SizedBox(height: 10),
//                   pw.Text(
//                     'with a score of ${_score.toStringAsFixed(2)}%',
//                     style: pw.TextStyle(fontSize: 18),
//                   ),
//                   pw.SizedBox(height: 20),
//                   pw.Text(
//                     'Exam Time: ${widget.countdownTime} minutes',
//                     style: pw.TextStyle(fontSize: 16),
//                   ),
//                   pw.SizedBox(height: 20),
//                   pw.Text(
//                     'ExamSphere',
//                     style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//
//     return pdf;
//   }
//
//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               Text('Time remaining: ${_remainingTime ~/ 60}:${_remainingTime % 60}'),
//               const SizedBox(height: 20),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: widget.questions.length,
//                 itemBuilder: (context, index) {
//                   final question = widget.questions[index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Q${index + 1}: ${question['question']}'),
//                       RadioListTile<String>(
//                         title: Text('A: ${question['optionA']}'),
//                         value: 'A',
//                         groupValue: _userAnswers[index],
//                         onChanged: (value) {
//                           setState(() {
//                             _userAnswers[index] = value!;
//                           });
//                         },
//                       ),
//                       RadioListTile<String>(
//                         title: Text('B: ${question['optionB']}'),
//                         value: 'B',
//                         groupValue: _userAnswers[index],
//                         onChanged: (value) {
//                           setState(() {
//                             _userAnswers[index] = value!;
//                           });
//                         },
//                       ),
//                       RadioListTile<String>(
//                         title: Text('C: ${question['optionC']}'),
//                         value: 'C',
//                         groupValue: _userAnswers[index],
//                         onChanged: (value) {
//                           setState(() {
//                             _userAnswers[index] = value!;
//                           });
//                         },
//                       ),
//                       RadioListTile<String>(
//                         title: Text('D: ${question['optionD']}'),
//                         value: 'D',
//                         groupValue: _userAnswers[index],
//                         onChanged: (value) {
//                           setState(() {
//                             _userAnswers[index] = value!;
//                           });
//                         },
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _submitExam,
//                 child: const Text('Submit Exam'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }












import 'package:flutter/material.dart';
import 'dart:async';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ExamPage extends StatefulWidget {
  final String examName;
  final String countdownTime;
  final List<Map<String, String>> questions;

  const ExamPage({
    super.key,
    required this.examName,
    required this.countdownTime,
    required this.questions,
  });

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  late Timer _timer;
  late int _remainingTime;
  double _score = 0;
  final Map<int, String> _userAnswers = {};

  @override
  void initState() {
    super.initState();
    try {
      _remainingTime = int.parse(widget.countdownTime) * 60;
    } catch (e) {
      _remainingTime = 0; // Default to 0 if parsing fails
    }
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > 0) {
          _remainingTime--;
        } else {
          _timer.cancel();
          _submitExam();
        }
      });
    });
  }

  void _submitExam() {
    _timer.cancel();
    double correctAnswers = 0;
    double totalQuestions = widget.questions.length.toDouble();
    for (int i = 0; i < widget.questions.length; i++) {
      if (_userAnswers[i] == widget.questions[i]['correctOption']) {
        correctAnswers++;
      } else if (_userAnswers[i] != null) {
        correctAnswers -= double.parse(widget.questions[i]['negativeMarking']!);
      }
    }
    setState(() {
      _score = (correctAnswers / totalQuestions) * 100;
    });
    _showResultDialog();
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Exam Result'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Your score: ${_score.toStringAsFixed(2)}%'),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.picture_as_pdf),
                onPressed: _previewCertificate,
                tooltip: 'Preview Certificate',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _previewCertificate() async {
    final pdf = await _generateCertificate();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Certificate Preview'),
          ),
          body: PdfPreview(
            build: (format) => pdf.save(),
            actions: [
              PdfPreviewAction(
                icon: const Icon(Icons.download),
                onPressed: (context, build, pageFormat) async {
                  await Printing.layoutPdf(onLayout: (PdfPageFormat format) async => pdf.save());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<pw.Document> _generateCertificate() async {
    final pdf = pw.Document();
    final image = await imageFromAssetBundle('assets/images/logo.png');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4.landscape,
        build: (pw.Context context) {
          return pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.purple, width: 4),
            ),
            padding: const pw.EdgeInsets.all(32),
            child: pw.Center(
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.center,
                children: [
                  pw.Image(image, width: 100, height: 100),
                  pw.SizedBox(height: 20),
                  pw.Text(
                    'Certificate of Completion',
                    style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text(
                    'This is to certify that',
                    style: pw.TextStyle(fontSize: 18),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'SHAHIL SIDDHANT',
                    style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'has successfully completed the exam',
                    style: pw.TextStyle(fontSize: 18),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    widget.examName,
                    style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Text(
                    'with a score of ${_score.toStringAsFixed(2)}%',
                    style: pw.TextStyle(fontSize: 18),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text(
                    'Exam Time: ${widget.countdownTime} minutes',
                    style: pw.TextStyle(fontSize: 16),
                  ),
                  pw.SizedBox(height: 20),
                  pw.Text(
                    'ExamSphere',
                    style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

    return pdf;
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.lightBlue[50], Colors.lightGreen[50]];

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.examName} - ${widget.countdownTime} minutes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.timer),
                const SizedBox(width: 5),
                Text('${_remainingTime ~/ 60}:${_remainingTime % 60}'),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.questions.length,
                itemBuilder: (context, index) {
                  final question = widget.questions[index];
                  return Card(
                    color: colors[index % colors.length],
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Q${index + 1}: ${question['question']}'),
                          RadioListTile<String>(
                            title: Text('A: ${question['optionA']}'),
                            value: 'A',
                            groupValue: _userAnswers[index],
                            onChanged: (value) {
                              setState(() {
                                _userAnswers[index] = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('B: ${question['optionB']}'),
                            value: 'B',
                            groupValue: _userAnswers[index],
                            onChanged: (value) {
                              setState(() {
                                _userAnswers[index] = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('C: ${question['optionC']}'),
                            value: 'C',
                            groupValue: _userAnswers[index],
                            onChanged: (value) {
                              setState(() {
                                _userAnswers[index] = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('D: ${question['optionD']}'),
                            value: 'D',
                            groupValue: _userAnswers[index],
                            onChanged: (value) {
                              setState(() {
                                _userAnswers[index] = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitExam,
                child: const Text('Submit Exam'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}