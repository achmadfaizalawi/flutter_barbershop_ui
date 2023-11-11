import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  final int date;
  final String day;
  final void Function(int) tapHandler;
  final bool isSelected;

  const DateWidget(
      {super.key,
      required this.date,
      required this.day,
      required this.tapHandler,
      required this.isSelected});

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {

  Color switchColor() {
    if (widget.isSelected) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor() {
    if (widget.isSelected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: switchColor(),
      ),
      height: 60,
      width: 60,
      child: InkWell(
        onTap: () {
          widget.tapHandler(widget.date);
        },
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 7),
              Text(
                widget.date.toString(),
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  color: switchContentColor(),
                ),
              ),
              Text(
                widget.day,
                style: TextStyle(
                  color: switchContentColor(),
                  fontFamily: "FiraSans",
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
