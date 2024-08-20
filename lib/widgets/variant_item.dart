import 'package:flutter/material.dart';

class VariantItem extends StatefulWidget {
  final String variant;
  final bool isSelect;
  final VoidCallback onTap;
  const VariantItem(
      {super.key,
      required this.isSelect,
      required this.onTap,
      required this.variant});

  @override
  State<VariantItem> createState() => _VariantItemState();
}

class _VariantItemState extends State<VariantItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  widget.onTap,
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 17,
                spreadRadius: 2,
                color: Colors.white30,
                offset: Offset(1, 4),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              widget.variant,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            )),
            widget.isSelect
                ? Image.asset(
                    "image/true.png",
                    width: 35,
                    height: 35,
              fit: BoxFit.cover,
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
