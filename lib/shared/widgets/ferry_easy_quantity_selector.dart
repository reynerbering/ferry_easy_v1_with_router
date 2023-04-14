import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FEQuantitySelector extends StatefulWidget {
  final int initialValue;
  final Function(int) onChanged;

  const FEQuantitySelector(
      {required this.initialValue, required this.onChanged});

  @override
  _FEQuantitySelectorState createState() => _FEQuantitySelectorState();
}

class _FEQuantitySelectorState extends State<FEQuantitySelector> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _incrementValue() {
    setState(() {
      _value++;
      widget.onChanged(_value);
    });
  }

  void _decrementValue() {
    setState(() {
      _value--;
      widget.onChanged(_value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            color: kcPrimaryColor,
            onPressed: _decrementValue,
          ),
          Text(
            '$_value',
            style: const TextStyle(color: kcPrimaryColor),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            color: kcPrimaryColor,
            onPressed: _incrementValue,
          ),
        ],
      ),
    );
  }
}
