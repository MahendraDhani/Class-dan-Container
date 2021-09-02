import 'package:clock_system/HalamanKetiga.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class in Flutter',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: HalamanHome(), debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child:Column(
          children: <Widget>[
            
            Text(
              'ini adalah halaman Home',
              style:Theme.of(context).textTheme.headline5,
            ),
            
            Text('Nama Lengkap : Syauqi Mubarok'),
            Text('kelas : XII RPL 6'),
            Text('no. Absen : 14'),
            
            new MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama() ));
            }, child: Text('Halaman Pertama'),
            color: Colors.blueAccent,
            textColor: Colors.black87,
            ),
            
            new MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
            }, child: Text('Halaman Kedua'),

              color: Colors.green,
              textColor: Colors.purple,
            ),

            new MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Halamanketiga() ));

            }, child:Text('Halaman Ketiga'),
            color: Colors.redAccent,
            textColor: Colors.black,)
       ],
        )
      )
    );
  }

}

class HalamanPertama extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Center(
        child: Text('Ini adalah halaman pertama'),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Center(
        child: Text('Ini adalah halaman kedua'),
      ),
    );
  }
}





