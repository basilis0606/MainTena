import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import intl package for date formatting
import 'package:intl/intl.dart';

class SquareWidget2 extends StatelessWidget {
  final double size = 35;
  final Color color = const Color(0xFF333333);
  final Color textColor = const Color(0xFFE5E5E5);
  final String icon;
  final String upLeftText;
  final DateTime date;
  final String downLeftText;
  final double? progress;
  final String? cost;

  const SquareWidget2(
      {Key? key,
      required this.icon,
      required this.upLeftText,
      required this.date,
      required this.downLeftText,
      this.progress,
      this.cost})
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
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: textColor),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: textColor),
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
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: textColor))),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
                              ),
                            ),
                          ),
                        ),
                      if (cost != null)
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                "$cost",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: textColor),
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
