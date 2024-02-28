import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample  extends StatefulWidget {
  const AnimatedPhysicalModelExample ({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState extends State<AnimatedPhysicalModelExample> {
  bool _isClick = false;

  void isCheck() => setState(() {
    _isClick = !_isClick;
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            AnimatedPhysicalModel(
              color: Colors.blue,
              shadowColor: Colors.blue,
              elevation: _isClick ? 60.0 : 0.0,
              shape: BoxShape.rectangle,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: Container(
                  width: 200,
                height: 200,
              ),
            ),

            SizedBox(height: 30),
            ElevatedButton(onPressed: () => isCheck(),
                child: Text(_isClick ? 'remove elevation': 'add elevation')
            )

          ],
        ),
      ),
    );
  }
}
