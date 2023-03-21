import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
    MyApp()); //1- main fonksiyonu uygulamayı başlatır ve MyApp sınıfını çağırır.

class MyApp extends StatefulWidget {
  //2- MyApp sınıfı, StatefulWidget sınıfından türetilir ve _MyAppState sınıfını çağırır.
  //Bu sınıf, uygulama durumunun yönetilmesi ve arayüzün güncellenmesi için gerekli kodları içerir.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //3- _MyAppState sınıfı, üç farklı renk değişkeni oluşturur:
  //_buttonColor, _backgroundColor ve _textColor.
  //Bu renkler sırasıyla butonun arka plan rengi, arka plan rengi ve metin rengidir.
  Color _appBarColor = Colors.green;
  Color _buttonColor = Colors.red;
  Color _backroundColor = Colors.white;
  Color _textColor = Colors.orange;
  void _changeColor() {
    //4- _changeColor fonksiyonu, yeni bir rastgele renk oluşturmak için Random() sınıfını kullanır.
    //Bu fonksiyon, _buttonColor, _backgroundColor ve _textColor değişkenlerini değiştirir.
    setState(() {
      _appBarColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );

      _textColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
      _buttonColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
      _backroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    //5- Build fonksiyonu, arayüzü oluşturmak için kullanılır.
    //Bu fonksiyon, MaterialApp widget'ı ile başlar ve Scaffold widget'ıyla devam eder.

    return MaterialApp(
        home: Scaffold(
      //6- Scaffold widget'ı, uygulama çerçevesini oluşturur ve bir AppBar widget'ı ile birlikte görüntülenir.
      //AppBar widget'ı, uygulama başlığını içerir.
      appBar: AppBar(
        title: const Text(
          'Backround Color Changer',
        ),
        backgroundColor: _appBarColor,
      ),
      body: Container(
        //7-  Container widget'ı, uygulama arka plan rengini temsil eder ve _backroundColor değişkenine bağlanır.
        color: _backroundColor,
        child: Center(
            //8 -Center widget'ı, butonu merkezlemek için kullanılır ve bir ElevatedButton widget'ı içerir.

            child: ElevatedButton(
              onPressed: _changeColor,
              child: Text("Change Color"),
              style: ElevatedButton.styleFrom(
                  //9- ElevatedButton widget'ı, kullanıcının tıklamasını yakalamak için bir
                  //onPressed özelliği içerir ve metin ve stil özellikleri içerir.
                  //Stil özellikleri, _buttonColor ve _textColor değişkenlerine bağlanır.
                  foregroundColor: _appBarColor,
                  backgroundColor: _buttonColor,
                  textStyle:
                      TextStyle(fontSize: 50, backgroundColor: _textColor)),
            )),
        //10- Herhangi bir değişiklik olduğunda, _changeColor fonksiyonu setState metodunu çağırarak arayüzün güncellenmesini sağlar.
        //11- Her tıklamada, _changeColor fonksiyonu rastgele renkleri oluşturur ve _buttonColor, _backgroundColor ve _textColor değişkenlerini günceller.
        //12- Her güncellemede, build fonksiyonu yeniden çağrılır ve arayüzün güncellenmiş hali oluşturulur.
      ),
    ));
  }
}
