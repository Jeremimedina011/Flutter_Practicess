import 'package:flutter/widgets.dart';

class buttomColumn extends StatelessWidget {
  const buttomColumn({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
    required this.context,
  });

  final IconData icon;
  final String label;
  final Color color;
  final String context;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
