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
  Map<String, double> FormValue = {'Num1': 0, 'Num2': 0, 'Num3': 0};
  double Sum=0;
  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue) {
      setState(() {
        FormValue.update(InputKey, (value)=> double.parse(InputValue));
      });
    }

    AddAllNumber(){
      setState(() {
        Sum= FormValue['Num1']!+ FormValue['Num2']!+FormValue['Num3']!;
      });


    }

    return Scaffold(
      appBar: AppBar(title: Text('Sum App'), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(Sum.toString(), style: HeadLineText()),
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
                onPressed: () {
                  AddAllNumber();
                },
                child: Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
