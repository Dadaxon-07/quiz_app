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
      onTap: widget.onTap,
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 40, 32, 105),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                blurRadius: 17,
                spreadRadius: 2,
                offset: Offset(1, 4),
              ),
            ],
            border: Border.all(width: 2, color: Colors.blueAccent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              widget.variant,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17, color: Colors.white),
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
