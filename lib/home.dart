import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task_iti/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> imagesUrlCategories = [
  'assets/Rectangle 10.png',
  'assets/Rectangle 11.png',
  'assets/Rectangle 12.png',
  'assets/pianapple juice.png',
  'assets/Rectangle 13.png',
  'assets/Rectangle 14.png',
  'assets/orange juice.png',
  'assets/Rectangle 15.png',
  'assets/Rectangle 16.png',
  'assets/Rectangle 17.png',
];
int categoryIndex = 0;
List<String> categories = [
  "Pineapple",
  "Banana",
  "Green Grapes",
  "pianapple juice",
  "Orange juice",
  "Grapes",
  "Melon",
  "Mango",
  "Green Grapes",
  "Grapes",
];

class _HomeScreenState extends State<HomeScreen> {
  final bestShop =
  FirebaseFirestore.instance.collection('fruits').snapshots();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[100],
        leading:
        Image.asset('assets/Ellipse 1.png',scale: 2,),
        title:  const Center(child: Text('Best Shop ',style: TextStyle(fontSize: 20,color: Colors.grey),)),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),);
          },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Shop our categories",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,crossAxisSpacing: 10,mainAxisSpacing: 10,
                ),
                children: [

                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/orange juice.png',scale: 9,),
                        const Text('Orange juice'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/strawberry.png',scale: 6,),
                        const Text('Fruits'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/pianapple juice.png',scale:13),
                        const Text('pianapple juice'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/juice.png',scale: 6,),
                        const Text('Juice'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Rectangle 15.png',scale: 10,),
                        const Text('Mango'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Fruit and Juice.png',scale: 26,),
                        const Text('Fresh Fruit Juice'),
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/Rectangle 2.png',scale: 12,),
                        const Text('Fresh Fruit'),
                      ],
                    ),

                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            "Our best sellers",
            style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),

          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: StreamBuilder(
                stream: bestShop,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Connection error');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text('Loading....');
                  }
                  var docs = snapshot.data!.docs;
                  return GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,),
                    itemCount: docs.length,
                    itemBuilder: (BuildContext context, int index) =>
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 90, width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4,
                                  offset: Offset(1, 1),
                                  spreadRadius: 0,
                                ),],),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Image(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(docs[index]['imageUrl'])),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3, right: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          docs[index]['name'],
                                          style: const TextStyle(
                                              color: Colors.orangeAccent,
                                              fontWeight: FontWeight.bold),),
                                        const SizedBox(
                                          width: 20,),
                                        Text(
                                          "${docs[index]['price']}\$",
                                          style: const TextStyle(
                                              color: Colors.orangeAccent,
                                              fontWeight: FontWeight.bold),),
                                      ],),),
                                ],
                              ),
                            ),
                          ),
                        ),
                  );
                },),
            ),
          ),
        ],
      ),
    );
  }
}
