import 'package:flutter/material.dart';

class PageSlide extends StatelessWidget {
  final String title;
  final String description;

  const PageSlide({super.key, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isLandscape = constraints.maxWidth > constraints.maxHeight;

        return Container(
          padding: const EdgeInsets.all(10),
          child:
              isLandscape
                  ? Row(
                    children: [
                      /// Image on the Left
                      Expanded(
                        flex: 4,
                        child: Image.asset('assets/logo.png', height: 250),
                      ),

                      /// Spacing between Image and Text
                      SizedBox(width: 20),

                      /// Text on the Right
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Text(
                              description,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                  : Column(
                    children: [
                      Image.asset('assets/logo.png', height: 400),
                      SizedBox(height: 30),
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        description,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
        );
      },
    );
  }
}
