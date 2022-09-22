import 'package:flutter/material.dart';

class EkinchiBet extends StatelessWidget {
  final int? kelgenSan;
  const EkinchiBet({this.kelgenSan, Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 42.0,
            width: 294.0,
            decoration: BoxDecoration(
              color: const Color(0xffBDBDBD),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Center(
              child: Text(
                'Caн: $kelgenSan',
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
