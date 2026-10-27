import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuIcon({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Color.fromARGB(179, 197, 196, 196),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24, color: Colors.black87),
        ),
        const SizedBox(height: 10),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
