import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class hotOrCold extends StatefulWidget {
  const hotOrCold({super.key});

  @override
  State<hotOrCold> createState() => _hotOrColdState();
}

class _hotOrColdState extends State<hotOrCold> {
  String feeling = "How Are You Feeling?";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        feeling = 'Cold';
                      print('Cold');
                      });
                    },
                    icon: const Icon(
                      Icons.ac_unit_rounded,
                      size: 35,
                    )),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.green,
                child: Center(
                    child: Text(feeling,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            shadows: [],
                          ),
                        ))),
              ),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.red,
                child: IconButton(
                    onPressed: () {
                      setState(() {
                        feeling = 'Hot';
                        print('Hot');
                      });
                    },
                    icon: const Icon(
                      Icons.fireplace_outlined,
                      size: 35,
                    )),
              ),
            ),
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 50,
                color: Colors.pink,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      feeling = "How is the weather?";
                    print('How is the weather?');
                    });
                  },
                  icon: const Icon(
                    Icons.replay_circle_filled_outlined,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}