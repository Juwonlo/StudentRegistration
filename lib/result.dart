
import 'package:flutter/material.dart';
import 'package:registration/main.dart';
import 'package:registration/model.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




































































// class Result extends StatelessWidget {
//   Model model;
//
//   Result({Key? key, required this.model}) : super(key: key);
//   List<Model> ModelsLst = <Model>[
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//      leading   :
//           IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.keyboard_return,
//                 color: Colors.white,
//               )),
//         elevation: 5,
//         title: const Text('COLLECTION',
//         textAlign: TextAlign.center,
//         ),
//
//       ),
//       //leading:,
//
//       body: SafeArea(
//         child: SizedBox(
//           width: MediaQuery.of(context).size.height,
//           child: Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               const Text('REG NO',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text(
//                                 model.regNo,
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               const Text('FIRST NAME',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text(
//                                 model.firstName,
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               const Text('MIDDLE NAME',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text(
//                                 model.middleName,
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               const Text('LAST NAME',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text(
//                                 model.lastName,
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               const Text('SECTION',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text(
//                                 model.secTion,
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: const <Widget>[
//                               Text('DATE',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//
//
//                             ]),
//                       ),
//                       SizedBox(
//                         width:MediaQuery.of(context).size.width/4 ,
//                         child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: const <Widget>[
//                              const Text('GENDER',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   )),
//                               Text('',
//                                 style: const TextStyle(fontSize: 14),
//                               ),
//                             ]),
//                       ),
//                     ],
//                   ),
//
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// padding: const EdgeInsets.all(10),
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: [
// Form(
// key: _formKey,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// SizedBox(
// height: 595,
// width: 500,
// child: Card(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20),
// side: const BorderSide(
// color: Colors.blue,
// width: 3,
// )),
// elevation: 10,
// child: Padding(
// padding: const EdgeInsets.all(12.0),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// TextFormField(
// //controller: regNo_Controller,
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your ID';
// }
// // ignore: unrelated_type_equality_checks
// if (regNumber.hasMatch(model.regNo) ==
// value) {
// return 'In the format as Seen ';
// }
// if (value.length != 11) {
// return 'Your ID is must be 11 digits';
// }
// return null;
// },
// onSaved: (String? value) {
// model.regNo = value!;
// },
// decoration: InputDecoration(
// labelText: 'Registration ID',
// hintText: '123456789FA',
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// contentPadding: const EdgeInsets.all(10.0),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// keyboardType: TextInputType.name,
// ),
// TextFormField(
// // controller: firstName_Controller,
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your first name';
// }
// if (value.length < 3) {
// return 'Your first name is short ';
// }
// if (value.length > 17) {
// return 'Your first name is long ';
// }
// return null;
// },
// onSaved: (String? value) {
// model.firstName = value!;
// },
// decoration: InputDecoration(
// labelText: 'First Name',
// hintText: 'First Name',
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// contentPadding: const EdgeInsets.all(10.0),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// keyboardType: TextInputType.name,
// ),
// TextFormField(
// // controller: middleName_Controller,
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your middle name';
// }
// if (value.length < 3) {
// return 'Your middle name is short ';
// }
// if (value.length > 17) {
// return 'Your middle name is long ';
// }
// return null;
// },
// onSaved: (String? value) {
// model.middleName = value!;
// },
// decoration: InputDecoration(
// labelText: 'Middle Name',
// hintText: 'Middle Name',
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// contentPadding: const EdgeInsets.all(10.0),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// keyboardType: TextInputType.name,
// ),
// TextFormField(
// //controller: lastName_Controller,
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your last name';
// }
// if (value.length < 3) {
// return 'Your Surname name is short ';
// }
// if (value.length > 17) {
// return 'Your Surname name is long ';
// } else {
// return null;
// }
// },
// onSaved: (String? value) {
// model.lastName = value!;
// },
// decoration: InputDecoration(
// labelText: 'Last Name',
// hintText: 'Surname',
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// contentPadding: const EdgeInsets.all(10.0),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// keyboardType: TextInputType.name,
// ),
// TextFormField(
// //controller: secTion_Controller,
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your section';
// } else if (value.length != 9) {
// return 'Invalid Format ';
// } else {
// return null;
// }
// },
// onSaved: (String? value) {
// model.secTion = value!;
// },
// keyboardType: TextInputType.number,
// decoration: InputDecoration(
// labelText: 'Section',
// hintText: '2020/2021',
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// contentPadding: const EdgeInsets.all(10.0),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// ),
// TextFormField(
// controller: dateInput,
// onTap: () {
// _dateInput(context);
// },
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderSide: const BorderSide(
// width: 3,
// ),
// borderRadius:
// BorderRadius.circular(18)),
// labelText: 'Date',
// labelStyle: const TextStyle(
// color: Colors.grey,
// fontSize: 18,
// fontWeight: FontWeight.bold),
// ),
// style: const TextStyle(
// color: Colors.blue,
// fontSize: 20,
// ),
// ),
// Container(
// //width: MediaQuery.of(context).size.width,
// padding: const EdgeInsets.symmetric(
// vertical: 5, horizontal: 8),
// width: 750,
// height: 80,
// child: DropdownButtonFormField(
// validator: (String? value) {
// if (value!.isEmpty) {
// return 'Enter your gender';
// } else {
// return null;
// }
// },
// isExpanded: true,
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(
// width: 1, color: Colors.grey),
// borderRadius: BorderRadius.circular(18),
// ),
// filled: true,
// fillColor: Colors.grey[200],
// ),
// dropdownColor: Colors.white,
// style: TextStyle(
// color: Colors.blue,
// ),
// value: dropdownValue,
// onChanged: (String? newValue) {
// setState(() {
// dropdownValue = newValue!;
// });
// },
// items: <String>['Male', 'Female', 'Others']
// .map<DropdownMenuItem<String>>(
// (String value) {
// return DropdownMenuItem(
// value: value,
// child: Text(
// value,
// style: TextStyle(fontSize: 20),
// ),
// );
// }).toList(),
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// Container(
// width: MediaQuery.of(context).size.width,
// padding: const EdgeInsets.only(top: 20),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// ElevatedButton(
// onPressed: () {
// Navigator.pushAndRemoveUntil(
// context,
// MaterialPageRoute(
// builder: (context) =>
// const MyHomePage(title: '')),
// (Route<dynamic> route) => false,
// );
// },
// child: const Text('Add'),
// style: ButtonStyle(
// backgroundColor:
// MaterialStateProperty.all(Colors.blue),
// foregroundColor:
// MaterialStateProperty.all(Colors.white),
// padding: MaterialStateProperty.all(
// const EdgeInsets.symmetric(
// horizontal: 50, vertical: 20),
// ),
// textStyle: MaterialStateProperty.all(
// const TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ElevatedButton(
// onPressed: validate,
// child: const Text('Save'),
// style: ButtonStyle(
// backgroundColor:
// MaterialStateProperty.all(Colors.blue),
// foregroundColor:
// MaterialStateProperty.all(Colors.white),
// padding: MaterialStateProperty.all(
// const EdgeInsets.symmetric(
// horizontal: 50, vertical: 20),
// ),
// textStyle: MaterialStateProperty.all(
// const TextStyle(
// fontSize: 20,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ],
// ),
// ),
// ]),
// ),
// ],
// ),
/////Date picker
// Future<void> _dateInput(BuildContext context) async {
//   final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(1980),
//       lastDate: DateTime.now());
//   if (picked != null && picked != dateInput) {
//     print(picked);
//     String formattedDate = DateFormat('dd-MM-yyyy').format(picked);
//     print(formattedDate);
//     setState(() {
//       dateInput.text = formattedDate;
//     });
//   } else {}
// }
// }