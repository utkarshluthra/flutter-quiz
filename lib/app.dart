import 'package:flutter/material.dart';
import 'questions.dart';
import 'results.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Icon> iconList = [
    const Icon(
      Icons.check,
      color: Colors.green,
    ),
    const Icon(
      Icons.close,
      color: Colors.red,
    ),
    const Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
  Row actionButton(Color color, String text) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(()=>{
                  iconList.add(
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                  )
                  }
                );

                print("Pressed!");
              },
              style: TextButton.styleFrom(
                backgroundColor: color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        const Questions(),
        const Expanded(
          child: SizedBox(),
        ),
        actionButton(Colors.green, 'True'),
        actionButton(Colors.red, 'False'),
        const Result()
      ],
    );
  }
}
