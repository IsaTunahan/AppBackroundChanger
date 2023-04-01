import 'package:backround_changer/ekran_2.dart';
import 'package:backround_changer/main.dart';
import 'package:flutter/material.dart';
class stackDeneme extends StatelessWidget {
  final Color _appBarColor = Colors.green;
  final Color _buttonColor = Colors.red;
  final Color _backroundColor = Colors.white;
  final Color _textColor = Colors.orange;

  void _onButtonPressed() {}
  const stackDeneme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
          child: Stack(
        children: [
          Container(
            width: 250,
            height: 150,
            color: _textColor,
          ),
          Positioned(
            left: 50,
            right: 50,
            bottom: 20,
            child: Container(
              height: 100,
              color: _appBarColor,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('Yeni Sayfaya Git'),
                onPressed: () async {
                  final cevap = await Navigator.of(context).push<bool>(
                    MaterialPageRoute(
                      builder: (context) {
                        return Ekran2('Beğendiniz mi?');
                      },
                    ),
                  );
                  print('Cevap Geldi: $cevap');
                  if (cevap == true) {
                    print('Beğendi!');
                  } else {
                    print('Beğenmedi!');
                  }
                },
              ),
            ),
          ),
          Positioned(
            right: 50,
            left: 50,
            child: Container(
              width: 400,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}