import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:task_iti/login.dart';


 class CreateAccount extends StatefulWidget {
   const CreateAccount({Key? key}) : super(key: key);

   @override
   State<CreateAccount> createState() => _CreateAccountState();
 }

 class _CreateAccountState extends State<CreateAccount> {
   bool visible = true;
   var emailController =TextEditingController();
   var passwordController =TextEditingController();
   var KonfirmationController =TextEditingController();

   var formkey = GlobalKey<FormState>();
   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body:  Padding(
         padding: const EdgeInsets.all(10.0),
         child: Center(
           child: SingleChildScrollView(
             child: Form(
               key: formkey,
               child:  Column(
                 children: [
                   const Text('Create Account',style: TextStyle(
                       color: Colors.orangeAccent,fontSize: 30,
                       fontWeight: FontWeight.bold),),
                   const SizedBox(height: 40,),
                   TextFormField(
                     controller: emailController,
                     validator: (value){
                       if(value!.isEmpty){
                         return "Email not be empty";
                       }
                       return null;
                     },
                     keyboardType: TextInputType.emailAddress,
                     onFieldSubmitted: (String value){
                       print(value);
                     },
                     onChanged: (String value){
                       print(value);
                     },
                     decoration: InputDecoration(
                       labelText: 'Email ',
                       prefixIcon: const Icon(Icons.email),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),
                       ),
                     ),
                   ),
                   const SizedBox(
                     height: 30,
                   ),
                   TextFormField(
                     controller: passwordController,
                     keyboardType: TextInputType.visiblePassword,
                     validator: (value){
                       if(value!.isEmpty){
                         return "password not be empty";
                       }
                       return null;

                     },
                     obscureText: visible,
                     onFieldSubmitted: (String value){
                       print(value);
                     },
                     onChanged: (String value){
                       print(value);
                     },
                     decoration: InputDecoration(
                       labelText: ' Password',
                       border:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),

                       ),
                       prefixIcon: const Icon(Icons.lock),
                       suffixIcon: IconButton(onPressed: (){
                         setState(() {
                           visible = !visible;
                         });
                       },
                           icon: visible
                               ? const Icon(Icons.remove_red_eye)
                               : const Icon(Icons.visibility_off)),
                     ),
                   ),
                   const SizedBox(
                     height: 30,
                   ),
                   TextFormField(
                     controller: KonfirmationController,
                     keyboardType: TextInputType.visiblePassword,
                     validator: (value){
                       if(value!.isEmpty){
                         return "password not be empty";
                       }
                       return null;

                     },
                     obscureText: visible,
                     onFieldSubmitted: (String value){
                       print(value);
                     },
                     onChanged: (String value){
                       print(value);
                     },
                     decoration: InputDecoration(
                       labelText: ' Konfirmation Password',
                       border:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30),

                       ),
                       prefixIcon: const Icon(Icons.lock),
                       suffixIcon: IconButton(onPressed: (){
                         setState(() {
                           visible = !visible;
                         });
                       },
                           icon: visible
                               ? const Icon(Icons.remove_red_eye)
                               : const Icon(Icons.visibility_off)),
                     ),
                   ),

                   const SizedBox(
                     height: 20,
                   ),
                   Container(
                     decoration:  BoxDecoration(
                       borderRadius: BorderRadius.circular(30),

                       color: Colors.orangeAccent,
                     ),
                     width: double.infinity,
                     child: MaterialButton(onPressed: (){
                         Navigator.push(context,
                           MaterialPageRoute(builder: (context) => const LoginScreen()),
                         );

                       if(formkey.currentState!.validate()){
                         print(emailController.text);
                         print(passwordController.text);}
                         FirebaseAuth.instance.createUserWithEmailAndPassword(
                             email: emailController.text, password: passwordController.text).then((value) {
                           print(value.user?.email);
                           print(value.user?.uid);
                         }
                         );
                     },
                       child: const Text('SIGN UP',style: TextStyle(color: Colors.white)),

                     ),

                   ),
                   const SizedBox(
                     height: 10,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       const Text(' Have an account',),
                       TextButton(onPressed: () {

                           Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const LoginScreen()),
                           );
                       },
                           child: const Text('Sign in',style: TextStyle(color: Colors.orangeAccent),)),
                     ],
                   )
                 ],
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

