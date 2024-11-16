import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionLabel = "Belum ada aksi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interaction"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  actionLabel = "Pengguna Melakukan TAP";
                });
              },
              onDoubleTap: (){
                setState(() {
                  actionLabel = "Pengguna Melakukan double TAP";
                });
              },
              onLongPress: () {
                setState(() {
                  actionLabel = "Long press";
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
              
                ),
                child: Center(child: Text("Aksi")),
              ),
            ),
            SizedBox(height: 16,),
            Text(actionLabel),
          ],
        ),
      ),
    );
  }
}