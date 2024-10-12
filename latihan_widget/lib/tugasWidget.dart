import 'package:flutter/material.dart';

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeri Foto"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network("https://picsum.photos/id/88/300/200", width: double.infinity, fit: BoxFit.fill, height: 300 ),
          SizedBox(height: 16,),
          Center(child: Text("Jalan di Barcelona", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center)),
          const Divider(
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                ),
          const Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8), 
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Icon(Icons.place, color: Colors.red),
                    ),
                    Text("Lokasi : Barcelona, Spanyol"),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(Icons.calendar_month, color: Colors.blue),
                    
                  ),
                  Text("Publikasi : 13 Agustus 2013"),
                ],
              ),
              
              const Divider(
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                ),
              Row(
                children: [
                  Padding(padding: const EdgeInsets.all(5)),
                  Text("Deskripsi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ],
              ),
            
            Text("Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.")
            ],
          ),
          

          
          
          
        ],
      ),
    );
  }
}