import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({super.key, required this.name, required this.style});

  final TextStyle style;
  final String name;

  @override
  Widget build(BuildContext context) {
    void showLength() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("El nom $name consta de ${name.length} caracters."),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      );
    }

    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              const Icon(Icons.arrow_right_outlined),
              Text(
                name,
                style: style,
              ),
              IconButton(
                onPressed: showLength,
                icon: const Icon(Icons.autorenew_outlined),
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
