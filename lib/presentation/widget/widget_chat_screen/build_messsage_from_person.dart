import 'package:flutter/material.dart';

class BuildMessageFromPerson extends StatelessWidget {
  const BuildMessageFromPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(10),
            topEnd: Radius.circular(10),
            bottomEnd: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: const Text(
            'hello every one '
        ),
      ),
    );
  }
}
