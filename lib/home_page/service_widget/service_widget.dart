import 'package:flutter/material.dart';

class ServiceWidget extends StatefulWidget {
  final String name;
  final String price;
  final void Function(String) tapHandler;
  final bool isSelected;

  const ServiceWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.tapHandler,
      required this.isSelected});

  @override
  State<ServiceWidget> createState() => _ServiceWidgetState();
}

class _ServiceWidgetState extends State<ServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return widget.tapHandler(widget.name);
      },
      child: Chip(
        backgroundColor: widget.isSelected
            ? Colors.black.withOpacity(0.8)
            : Colors.grey.withOpacity(0.2),
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              "Rp ${widget.price}",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
