import 'package:flutter/material.dart';

class PropertyTypeCard extends StatelessWidget {
  const PropertyTypeCard({
    Key? key,
    required this.imageIcon,
    required this.typeName,
  }) : super(key: key);
  final String imageIcon;
  final String typeName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              imageIcon,
              height: 50,
              width: 50,
            ),
            Text(
              typeName,
              style: TextStyle(
                color: Colors.green[600],
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
