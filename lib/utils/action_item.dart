import 'package:flutter/material.dart';

class Items {
  static SizedBox actionItem(String imgPath, String description) {
    return SizedBox(
      width: 88,
      height: 140,
      child: Column(
        children: [
          Card(
            shadowColor: Colors.black,
            elevation: 16,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFCD0051),
                      Color(0xFFAC0044),
                      Color(0xFF8F0038),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  imgPath,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
