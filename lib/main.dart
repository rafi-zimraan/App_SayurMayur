import 'package:flutter/material.dart';
import 'package:toko_buah_sayuran/card.dart';
import 'package:toko_buah_sayuran/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final data = Product('Apel', '5.000', 'premium', 'assets/sayurKol.png',
      'Sayuran yang mempunyai zat yang menyehatkan');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Center(
          child: Text(
            "Toko Buah & Sayur",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        actions: [
          Stack(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 10,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return CardItems(product: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}
