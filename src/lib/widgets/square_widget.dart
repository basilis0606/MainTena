import 'package:flutter/material.dart';

class SquareWidget extends StatelessWidget {
  final double size = 35;
  final Color color = Colors.blueGrey;
  final IconData icon;

  const SquareWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      height: size * 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Expanded(
                    flex: 1,
                    child: Icon(icon),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: const [
              Expanded(child: Text("text")),
              // add white space
              Expanded(child: SizedBox()),
              Expanded(child: Text("text")),
            ],
          )),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
              child: Column(
            children: const [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text("text"),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
