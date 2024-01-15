import 'package:flutter/material.dart';

class BuildMyMessage extends StatelessWidget {
  const BuildMyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade200,
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(10),
            topEnd: Radius.circular(10),
            bottomStart: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: const Text('Hello my name is adam '),
      ),
    );
  }
}
