import 'package:flutter/material.dart';

class BarbermanWidget extends StatefulWidget {
  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;

  const BarbermanWidget(
      {super.key,
      required this.imgPath,
      required this.name,
      required this.tapHandler,
      required this.isSelected});

  @override
  State<BarbermanWidget> createState() => _BarbermanWidgetState();
}

class _BarbermanWidgetState extends State<BarbermanWidget> {
  Color getSelectedBarber() {
    if (widget.isSelected) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                return widget.tapHandler(widget.name);
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: getSelectedBarber(),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 7),
        Text(widget.name,
        style: const TextStyle(
          fontFamily: 'FiraSans',
          fontSize: 15,
        ),
        
        )
      ],
    );
  }
}
