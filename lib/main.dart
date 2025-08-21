import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Arial",
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange[700],
          title: Row(
            children: [
              Icon(Icons.location_on_sharp, color: Colors.white,),
              Padding(padding: EdgeInsets.all(5)),
              Title(color: Colors.white, child: Text("Jakarta", style: TextStyle(color: Colors.white),)),
            ],            
          ),

        actions: [
          // Notif
          Container(
            margin: EdgeInsets.only(right: 10), // jarak antar kotak
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.notifications, color: Colors.white),
          ),

          // Cart
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.shopping_cart, color: Colors.white),
          ),
          const SizedBox(height: 20)
        ],
        

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 12),
                ),
              ),
            ),
          ),
        ),
      ),


      // Promo Woi

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Promo Spesial",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w400
                ),
              )
            ],
            ),
            const SizedBox(height: 20),

            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/promo_sweet_dessert_banner.png"),
                  fit: BoxFit.cover, // biar gambarnya ngepas
                ),
              ),
            )

          ]
          
        ),
      ),
    );
  }
}

// appBar: AppBar(
//           backgroundColor: Colors.blue[400],
//           centerTitle: true,
//           title: Text(
//             "AbsurdApp",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600
//             ),
//           ),

//           leading: Icon(Icons.menu),
//           actions: [
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
                  
//                   Icon(Icons.notifications, color: Colors.white,),
//                   SizedBox(width: 10),
//                   Icon(Icons.shopping_cart, color: Colors.white),
//                 ],
//               ),

//             )
//           ],
//         ),