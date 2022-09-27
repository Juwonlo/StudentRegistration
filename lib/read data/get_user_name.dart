import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String documentId;
  
  GetUserName({required this.documentId});
  
  
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
        builder:((context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        Map<String, dynamic> data =
            snapshot.data!.data() as Map<String, dynamic>;
        return Text(
            '${data['registration no ']}\n'
                '${data['last name']}\n'
            '${data['first name']}'
            + ' ' +
            '${data['middle name']}\n'
            '${data['age']}' +
            'years old \n'
                '${data['section']}\n'
                '${data['date']}'
        );
      }
      return Text('Loading.....');
    }

    ) );
  }
}
