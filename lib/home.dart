import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class benim extends StatefulWidget {
  @override
  State<benim> createState() => _benimState();
}

class _benimState extends State<benim> {
  myAchive(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            type,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        )
      ],
    );
  }

  benimalanim(icon, text) {
    return Container(
      width: 350,
      height: 100,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255, 190, 14, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              Text(text,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/öz.png',
              scale: 12,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Öz Geçmiş',
              style: TextStyle(color: Colors.black, shadows: [
                Shadow(color: Colors.black, offset: Offset(-3, -0)),
                Shadow(color: Colors.red, blurRadius: 8, offset: Offset(3, 0))
              ]),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.red),
                child: Image.asset('assets/öz.png')),
            ListTile(
              title: Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Geçmiş Başarılar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Giriş Bilgileri'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Temalar'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 280,
            ),
            ListTile(
              title: Text(
                'Çıkış',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SlidingSheet(
        color: Colors.black,
        elevation: 8,
        cornerRadius: 40,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.48, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            //Öğerleri üst üste koyma
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: ShaderMask(
                  //bir evin duvalarına renk uygulamak gibi
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.green, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode:
                      BlendMode.dstOver, //görüntülerin üstüne efekt koymak
                  child: Image.asset(
                    'assets/kendim.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.40),
                child: Column(
                  children: [
                    Text(
                      'Kemal DENCİK',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Bilgisayar Mühendisi',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'RubikDirt'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
              ),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchive('12', 'Projem'),
                      myAchive('4', 'Ay Deneyim'),
                      myAchive('3', 'Mesaj'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Uzmanlık Alanlarım',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          benimalanim(Icons.android, 'Android'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          benimalanim(Icons.flutter_dash, 'Flutter'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          benimalanim(
                              Icons.account_tree_outlined, 'Siber Güvenlik'),
                        ],
                      ),
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
