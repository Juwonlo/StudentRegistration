import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:registration/result.dart';
import 'package:firebase_auth/firebase_auth.dart';



class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);
  // const RegisterPage({
  //   Key? key,
  // }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Text controller
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _regNoController = TextEditingController();
  final _ageController = TextEditingController();
  final _sectionController = TextEditingController();
  final _dateController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String errorMessage = '';

  @override
  void dispose() {
    _regNoController.dispose();
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();
    _sectionController.dispose();
    _dateController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future saveUp() async {
    if (_key.currentState!.validate()) {
      try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());

      addUserDetails(
        _regNoController.text.trim(),
        _firstNameController.text.trim(),
        _middleNameController.text.trim(),
        _lastNameController.text.trim(),
        int.parse(_ageController.text.trim()),
        _sectionController.text.trim(),
        _dateController.text.trim(),
      );
      errorMessage = '';
      } on FirebaseAuthException catch (error) {
        errorMessage = error.message!;
      }
      setState(() {});
    }
  }


  Future addUserDetails(
    var regNo,
    String firstName,
    String middleName,
    String lastName,
    int age,
    var section,
    var date,
  ) async {
    await FirebaseFirestore.instance
        .collection('users')
        .add({
          'registration no ': regNo,
          'first name': firstName,
          'middle name': middleName,
          'last name': lastName,
          'age': age,
          'section': section,
          'date': date,
        });
         //.then((value) => print("Student data Added"))
       // .catchError((error) => print("Student couldn't be added."));
  }

  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty) {
      return 'Email address is required.';
    }
    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) {
      return 'Invalid E-mail Address format.';
    }
    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty) {
      return 'Password is required.';
    }
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formPassword)) {
      return '''
      Password must be at least 6 characters,
      include an uppercase letter, number and symbol.
      ''';
    }
    return null;
  }

  String? validateReg(String? formReg) {
    if (formReg == null || formReg.isEmpty) {
      return 'Registration Number is required';
    }
    String pattern =
       r'([0-9A-Z]){11,11}';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formReg)) {
      return '''
      Password must be at least 11 characters,
      include numbers and uppercase letters.
      ''';
    }
    return null;
  }

  String? validateAge(String? formAge) {
    if (formAge == null || formAge.isEmpty) {
      return 'Age is required';
    }
    String pattern =
        r'\d{1,3}';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formAge)) {
      return '''
      Age is too long
      ''';
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Form(
          key: _key,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Icon(
                      Icons.app_registration,
                    size: 75,
                  ),
                  const SizedBox(height: 20),
                  const Text('Welcome!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 44,
                      color: Colors.purple,
                    ),
                  ),
                 const SizedBox(height: 10),
                  //RegNo
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: validateReg,
                      controller: _regNoController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Registration No',
                        hintText: '123456789AZ',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //FirstName
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                       // labelText: 'First Name',
                        hintText: 'First Name',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //middle Name
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _middleNameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Middle Name',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'SurName',
                        labelText: 'Last Name',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Age
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: validateAge,
                      controller: _ageController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Age',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: _emailController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Email',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  //Text(errorMessage),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextFormField(
                      validator: validatePassword,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Password',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _sectionController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Section',
                        hintText: 'XXXX/YYYY',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Date
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.indigo),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        labelText: 'Date',
                        hintText: 'dd/MM/YYYY',
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: GestureDetector(
                      onTap: saveUp,
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              'SAVE',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const  Text('Already a Student?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: const Text(' Login Now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
