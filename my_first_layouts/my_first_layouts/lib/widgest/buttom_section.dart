import 'package:flutter/material.dart';
import 'package:my_first_layouts/widgest/buttom_column.dart';

class ButtomSection extends StatelessWidget {
  Column _buildColum(
    IconData icon,
    String label,
    Color color,
    BuildContext context,
    String msg,
  ) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(seconds: 1), content: Text(msg)));
          },
          icon: Icon(
            icon,
            size: 25,
          ),
          color: color,
        ),
        Text(label)
      ],
    );
  }

  const ButtomSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColum(
            Icons.call, 'CALL', color, context, 'Entrando en llamada con...'),
        _buildColum(Icons.near_me, 'ROUTE', color, context,
            'Compartiendo la ubicacion de...'),
        _buildColum(
            Icons.share, 'SHARE', color, context, 'Compartiendo con...'),
        _buildColum(Icons.info, 'INFO', color, context,
            ' Created By : Jeremi Alonzo Medina Medina - 5B - DSM'),
      ],
    );
  }
}
