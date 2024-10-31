import 'package:flutter/material.dart';

class PhotoUploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 48) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Araç Fotoğrafları'),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            _photoUploadField("Aracın soldan fotoğrafını ekle."),
            _photoUploadField("Aracın önden fotoğrafını ekle."),
            _photoUploadField("Aracın sağdan fotoğrafını ekle."),
            _photoUploadField("Aracın arkadan fotoğrafını ekle."),
            _photoUploadField("Araç içi ön tarafın fotoğrafını ekle."),
            _photoUploadField("Araç içi arka tarafın fotoğrafını ekle."),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Fotoğrafları yükleme işlemi
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 18),
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              child: Text("Yükle",style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }

  Widget _photoUploadField(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.grey),
            onPressed: () {
              // Fotoğraf çekme veya yükleme işlemi
            },
          ),

        ],
      ),
    );
  }
}
