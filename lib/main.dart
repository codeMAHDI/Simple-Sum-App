import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  Map<String, String> FormValue = {'Num1': '', 'Num2': '', 'Num3': ''};

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue) {
      setState(() {
        FormValue.update(InputKey, (value)=>InputValue);
      });
    }

    return Scaffold(
      appBar: AppBar(title: Text('Sum App'), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Sum=0', style: HeadLineText()),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange('Num1', value);
              },
              decoration: AppInputStyle('First Number'),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange('Num2', value);
              },
              decoration: AppInputStyle('Second Number'),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                MyInputOnChange('Num3', value);
              },
              decoration: AppInputStyle('Third Number'),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: AppButtonStyle(),
                onPressed: () {},
                child: Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
