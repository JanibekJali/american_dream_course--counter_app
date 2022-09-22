import 'dart:developer';

import 'package:flutter/material.dart';

import 'ekinchi_bet.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int san = 0;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EkinchiBet(
                  kelgenSan: san,
                );
              }));
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
                  'Caн: $san',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  if (san >= 1) {
                    san--;
                  }
                  // san = san - 1;
                  setState(() {});
                  log('Sol san kemip atat $san');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0.01),
                  width: 70,
                  child: const Center(
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 58, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    san = san + 1;
                  });

                  log('On san koshulup atat $san');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0.01),
                  width: 70,
                  child: const Center(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 58, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
