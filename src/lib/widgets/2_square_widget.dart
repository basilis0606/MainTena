import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SquareWidget2 extends StatelessWidget {
  final double size = 35;
  final Color color = Colors.transparent;
  final String icon;
  final String upLeftText;
  final String upRightText;
  final String downLeftText;
  final double? progress;

  const SquareWidget2(
      {Key? key,
      required this.icon,
      required this.upLeftText,
      required this.upRightText,
      required this.downLeftText,
      this.progress})
      : super(key: key);

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
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: SvgPicture.asset(icon),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // add 3 rows
                Row(
                  children: [
                    // Add column with text
                    Expanded(
                      child: Text(upLeftText),
                    ),
                    // Add column with text
                    Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Text(upRightText),
                          )),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      progress != null
                          ? Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: LinearProgressIndicator(
                                  value: progress,
                                  backgroundColor: Colors.white,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Colors.red),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(downLeftText),
                    ),
                    // Add column with text
                    const Expanded(
                      child: SizedBox(),
                    ),
                    // Add column with text
                    if (progress != null)
                      Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text("${(progress! * 100).toInt()}%"),
                            )),
                      ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
