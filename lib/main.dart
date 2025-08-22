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

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.orange[800]),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class RekomendasiProdukList extends StatelessWidget {
  const RekomendasiProdukList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          RekomendasiProduk(
            assetImage: "assets/baked-chocolate-doughnuts-59348-1.jpeg",
            title: "Chocolate Donut",
            rating: 4.8,
          ),
          RekomendasiProduk(
            assetImage: "assets/Carrot-Cake-Cupcakes-SQUARE.webp",
            title: "Chocolate Cup Cake",
            rating: 4.7,
          ),
          RekomendasiProduk(
            assetImage: "assets/choco-cake.jpg",
            title: "Chocolate Cake",
            rating: 4.9,
          ),
        ],
      ),
    );
  }
}

class RekomendasiProduk extends StatelessWidget {
  final String assetImage;
  final String title;
  final double rating;

  const RekomendasiProduk({
    super.key,
    required this.assetImage,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              assetImage,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(rating.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
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
              
            ),
            SizedBox(height: 20),
            

            //Kategori
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kategori",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text("See All")
              ],
            ),

            const SizedBox(height: 10),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem(icon: Icons.cake, title: "Cup Cake"),
                  CategoryItem(icon: Icons.cookie, title: "Cookies"),
                  CategoryItem(icon: Icons.donut_small, title: "Donuts"),
                  CategoryItem(icon: Icons.bakery_dining, title: "Breads "),
                ],
              ),
            ),
            SizedBox(height: 32),

            Text(
              "Rekomendasi Produk",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600              ),
            ),
            // Rekomendasi Prosduk
            SizedBox(
              height: 250, 
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  
                  RekomendasiProduk(
                    assetImage: "assets/baked-chocolate-doughnuts-59348-1.jpeg",
                    title: "Chocolate Donut",
                    rating: 4.8,
                  ),
                  RekomendasiProduk(
                    assetImage: "assets/Carrot-Cake-Cupcakes-SQUARE.webp",
                    title: "Cup Cake",
                    rating: 4.7,
                  ),
                  RekomendasiProduk(
                    assetImage: "assets/Carrot-Cake-Cupcakes-SQUARE.webp",
                    title: "Cake",
                    rating: 5.0,
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
  items: const [
    // Homepage
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),

    // Menu Page
    BottomNavigationBarItem(
      icon: Icon(Icons.menu_book),
      label: "Menu",
    ),

    // Profile Page
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ],
),

        //Homepage
        
    );
    
  }
}
