import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final TextStyle style;
  final String name;
  final VoidCallback onRemove;

  const CustomTile(
      {super.key,
      required this.name,
      required this.style,
      required this.onRemove});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_right_outlined),
              Expanded(
                child: Text(
                  name,
                  style: style,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              IconButton(
                onPressed: showLength,
                icon: const Icon(Icons.message),
                color: Colors.deepOrange,
              ),
              FilledButton(
                onPressed: onRemove,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.recycling),
                    ),
                    Text("Recicla'm"),
                  ],
                ),
              )
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
