import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import intl package for date formatting
import 'package:intl/intl.dart';

class SquareWidget2 extends StatelessWidget {
  final double size = 35;
  final Color color = Colors.blueGrey;
  final String icon;
  final String upLeftText;
  final DateTime date;
  final String downLeftText;
  final double? progress;

  const SquareWidget2(
      {Key? key,
      required this.icon,
      required this.upLeftText,
      required this.date,
      required this.downLeftText,
      this.progress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Convert date to string, with month name instead of number

    String upRightText = DateFormat('MMM d, yyyy').format(date);

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
                    child: SvgPicture.asset(
                  icon,
                  height: size * 1.3,
                  width: size * 1.3,
                )),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // add 3 rows
                Padding(
                  padding: const EdgeInsets.only(
                      top: 4.0), // Adjust the padding value as needed
                  child: Row(
                    children: [
                      // Add column with text
                      Expanded(
                        child: Text(
                          upLeftText,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Add column with text
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Text(
                              upRightText,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 4.0), // Adjust the bottom padding value as needed
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(downLeftText,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600))),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      if (progress != null)
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                "${(progress! * 100).toInt()}%",
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
