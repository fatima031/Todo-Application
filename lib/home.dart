// import 'package:afuturebuilding/logOut.dart';
import 'package:flutter/material.dart';




class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  height: 40,
                  width: 40,
                  child: const Image(
                    image: AssetImage(
                      "assets/images/checked.jpeg",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}