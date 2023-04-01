import 'package:flutter/material.dart';


class Ekran2 extends StatelessWidget {
  final String mesaj;
  const Ekran2(
    this.mesaj, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yeni Sayfa',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Container(
          height: 100,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                          child: Text(
                        mesaj,
                        style: TextStyle(fontSize: 24),
                      )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        Navigator.of(context).maybePop(true);
                      },
                      child: const Text('Evet'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.of(context).maybePop(false);
                      },
                      child: const Text('Hayır'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
