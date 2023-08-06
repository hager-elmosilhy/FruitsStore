import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Hager.png'),
              const SizedBox(height: 20,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Text('Hager Alaa Ramadan'),
                    ],
                  ),
                ),

                ),
              const SizedBox(height: 15,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.date_range_outlined),
                      Text('22/2/2002'),
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 15,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone_android_sharp),
                      Text('+0100957642'),
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 15,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white,
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      Text('Hager Alaa Ramadan'),
                    ],
                  ),
                ),

              ),
              const SizedBox(height: 15,),

              Container(
                height: 50,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.white,
                ),
                width: double.infinity,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.email),
                      Text('Hager@gmail.com'),
                    ],
                  ),
                ),

              ),



              const SizedBox(height: 15,),


              Container(
                height: 60,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                  ],
                  color: Colors.orangeAccent,
                ),
                width: double.infinity,
                child: const Center(child: Text('Edit Profile',style: TextStyle(fontSize: 20),)),

              ),

            ],
          ),
        ),
      ),
    );
  }
}
