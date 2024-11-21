import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String degree = " ";
bool FP1 = false;
bool FP2 = false;
bool FP3 = false;
bool FP4 = false;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtqmIT7GEBfdxqR8gw5cwPOBaXRIzteaSOtg&s"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                "Feedback Form",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Container(
                height: 485,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      //Name
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: "Enter Your Name",
                            labelText: "Your Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                      //Contact number
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            hintText: "Enter Your Mobile No",
                            labelText: "Your No",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                      const Text(
                        "Your Degree",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "UG",
                              groupValue: degree,
                              onChanged: (value) {
                                setState(() {
                                  degree = value.toString();
                                });
                                print(value);
                              }),
                          const Text("UG Student"),

                          // pgstudent
                          Radio(
                              value: "PG",
                              groupValue: degree,
                              onChanged: (value) {
                                setState(() {
                                  degree = value.toString();
                                });
                                print(value);
                              }),
                          const Text("PG Student"),

                          Radio(
                              value: "Developer",
                              groupValue: degree,
                              onChanged: (value) {
                                setState(() {
                                  degree = value.toString();
                                });
                                print(value);
                              }),
                          const Text("Developer"),
                        ],
                      ),
                      const Text(
                        "Favourite Program",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: FP1,
                              onChanged: (value) {
                                setState(() {
                                  FP1 = value ?? false;
                                });
                                print(value);
                              }),
                          Text("Flutter"),
                          Checkbox(
                            value: FP2,
                            onChanged: (value) {
                              setState(() {
                                FP2 = value ?? false;
                              });
                              print(value);
                            },
                          ),
                          Text("React"),
                          Checkbox(
                            value: FP3,
                            onChanged: (value) {
                              setState(() {
                                FP3 = value ?? false;
                              });
                              print(value);
                            },
                          ),
                          Text("React js"),
                          Checkbox(
                            value: FP4,
                            onChanged: (value) {
                              setState(() {
                                FP4 = value ?? false;
                              });
                              print(value);
                            },
                          ),
                          Text("Angular"),
                        ],
                      ),
                      TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Enter Your Feedback",
                            labelText: "Your Feedback",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
