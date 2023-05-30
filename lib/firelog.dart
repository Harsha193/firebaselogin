import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class firelog extends StatefulWidget {
  const firelog({Key? key}) : super(key: key);

  @override
  State<firelog> createState() => _firelogState();
}

class _firelogState extends State<firelog> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  Future signIn()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(filled: true,
                fillColor: Colors.blue,border: OutlineInputBorder(borderRadius: BorderRadius.circular((10),
                ),
                ),
                hintText: 'email'),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(decoration: InputDecoration(filled: true,
                fillColor: Colors.blue,border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular((10),),
                ),
                hintText: 'password'),
            ),

            SizedBox(
              height: 25,
            ),
            TextButton(style:TextButton.styleFrom(backgroundColor: Colors.blue),onPressed: (){},
                child: Text('login',style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
