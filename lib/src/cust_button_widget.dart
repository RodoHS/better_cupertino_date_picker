import 'package:flutter/material.dart';

/// Visit the CustButtonWidget file for a usage example
/// - for an expanded button use Row -> Expanded -> CustButtonWidget
/// - you can also include other buttons in the row
class CustButtonWidget extends StatefulWidget {
  final String text;
  final Color? btnColor;
  final Color? textColor;
  final bool? loading;

  CustButtonWidget({
    Key? key,
    required this.text,
    @required this.btnColor,
    @required this.textColor,
    this.loading,
  }) : super(key: key);
  @override
  _CustButtonWidgetState createState() => _CustButtonWidgetState();
}

class _CustButtonWidgetState extends State<CustButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: widget.btnColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: (widget.loading ?? false) ? CircularProgressIndicator() : Text(
            widget.text,
            style: TextStyle(
              fontSize: width * 0.04,
              color: widget.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

// one button (expanded)

// Row(
//   children: [
//     Expanded(
//       child: GestureDetector(
//         child: CustButtonWidget(
//           text: 'Done',
//           btnColor: Styles.blue,
//           textColor: Colors.white,
//         ),
//         onTap: () {
//
//         },
//       ),
//     ),
//   ],
// ),

//Two buttons (expanded)

// Row(
//   children: [
//     Expanded(
//       child: GestureDetector(
//         child: CustButtonWidget(
//           text: 'Done',
//           btnColor: Styles.blue,
//           textColor: Colors.white,
//         ),
//         onTap: () {
//           
//         },
//       ),
//     ),
//    SizedBox(width: 10.0),
//    Expanded(
//       child: GestureDetector(
//         child: CustButtonWidget(
//           text: 'Done',
//           btnColor: Styles.blue,
//           textColor: Colors.white,
//         ),
//         onTap: () {
//           
//         },
//       ),
//     ),
//   ],
// ),