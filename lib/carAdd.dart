
import 'package:flutter/material.dart';
import 'package:login/photoAdd.dart';


class carAdd extends StatelessWidget {
  carAdd({super.key});
  final TextEditingController markaController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController yilController = TextEditingController();
  final TextEditingController renkController = TextEditingController();
  final TextEditingController plakaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'lib/image/araba.png', // Görsel için örnek bir yol
                  height: 50,
                  width: 1500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Araç Bilgileri',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Lütfen araç bilgilerini gir',
                style: TextStyle(fontSize: 16, color: Colors.grey, ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bilgiGirdisi("Marka", markaController),
                  bilgiGirdisi("Model", modelController),
                  bilgiGirdisi("Yıl", yilController),
                  bilgiGirdisi("Renk", renkController),
                  bilgiGirdisi("Plaka", plakaController),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    if( markaController.text != null ){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>PhotoUploadPage(),
                      ));
                    }

                    print("Kaydet tıklandı");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Kaydet", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bilgiGirdisi(String etiket, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            etiket,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          SizedBox(height: 1),
          TextFormField(
            controller: controller,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            readOnly: false, // Sadece okuma amaçlı
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}



