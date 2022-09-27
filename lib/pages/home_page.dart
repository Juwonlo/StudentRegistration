import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration/read%20data/get_user_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  //document IDs
  List<String> docIDs = [];

  //get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('users').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);
          }),
        );
  }

  // @override
  // void initState() {
  //   getDocId();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.email!,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 20),
          Expanded(
            child: FutureBuilder(
              future: getDocId(),
              builder: (context, snapshot) {
                return ListView.builder(
                 //physics:ClampingScrollPhysics() ,
                  itemCount: docIDs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                   ListTile(
                        title: GetUserName(documentId: docIDs[index]),
                        textColor: Colors.red,
                        tileColor: Colors.grey[200],
                      ),
                    );
                  },
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}

// Expanded(
// child: FutureBuilder(
// future: getDocId(),
// builder: (context, snapshot) {
// return ListView.builder(
// itemCount: docIDs.length,
// itemBuilder: (context,index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: ListTile(
// title: GetUserName(documentId: docIDs[index]),
// tileColor: Colors.grey[200],
// ),
// );
// },
// );
// },
// ),)

///datatable my own
//DataTable(
                     //     columns:[
                       //       DataColumn(label: Text('Registration No')),
                       //       DataColumn(label: Text('First Name')),
                       //       DataColumn(label: Text('Middle Name')),
                       //       DataColumn(label: Text('Last Name')),
//                       //       DataColumn(label: Text('Age')),
//                       //       DataColumn(label: Text('Section')),
//                       //       DataColumn(label: Text('Date')),
//                       //
//                       //     ],
//                       //     rows: [
//                       //       DataRow(
//                       //           cells: [
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //             DataCell(GetUserName(documentId: docIDs[index]),),
//                       //           ]
//                       //       ),
//                       //     ]),
///DataTable
 //StreamBuilder<QuerySnapshot>(
// stream: FirebaseFirestore.instance.collection('users').snapshots(),
// builder: (context, snapshot) {
// if (!snapshot.hasData) return LinearProgressIndicator();
//
 //return DataTable(
// columns: [
// DataColumn(label: Text('Registration No')),
// DataColumn(label: Text('First Name')),
// DataColumn(label: Text('Rapper\nname')),
// ],
// rows: _buildList(context, snapshot.data.docs)
// );
// },
// );
// }
//
//
//
//
// List<DataRow> _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
//   return  snapshot.map((data) => _buildListItem(context, data)).toList();
// }
//
//
//
// DataRow _buildListItem(BuildContext context, DocumentSnapshot data) {
//   final record = Record.fromSnapshot(data);
//
//   return DataRow(cells: [
//     DataCell(Text(record.name)),
//     DataCell(Text(record.votes.toString())),
//     DataCell(Text(record.rName)),
//   ]);
// }
