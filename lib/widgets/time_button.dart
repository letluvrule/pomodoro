import 'package:flutter/material.dart';

class TimeButton extends StatefulWidget {
  final int totalSeconds;
  final String label;
  final bool isRunning;
  final int selectedTime;
  final Function onUpdate;

  const TimeButton({
    Key? key,
    required this.totalSeconds,
    required this.label,
    required this.isRunning,
    required this.selectedTime,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<TimeButton> createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  bool get isSelected => widget.totalSeconds == widget.selectedTime;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => widget.onUpdate(widget.totalSeconds),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.deepPurple[300] : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            fontSize: 40,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
