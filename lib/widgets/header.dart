
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.asset(
            'assets/default_profile.jpg',
            height: 50,
            width: 50,
          ),
        ),
        const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ],
    );
  }
}