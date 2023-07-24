import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn Flutter"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.info_outline),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/AE.jpeg"),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                  color: Colors.blueGrey,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.5),
                  padding: const EdgeInsets.all(10.0),
                  child: const Center(
                    child: Text(
                      "This is a test widget",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                onPressed: () {},
                child: const Text("Elevated Button"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Outlined button"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Text button"),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint("This is the row");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                    Text("Row text"),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                },
              ),
              Checkbox(
                value: isChecked,
                onChanged: (bool? newBool) {
                  isChecked = newBool;
                },
              ),
              Image.network("https://wallpaperaccess.com/full/8881287.jpg")
            ],
          ),
        ));
  }
}
