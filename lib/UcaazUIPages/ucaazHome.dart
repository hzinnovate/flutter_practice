import "package:flutter/material.dart";

class UcaazHome extends StatefulWidget {
  const UcaazHome({super.key});

  @override
  State<UcaazHome> createState() => _UcaazHomeState();
}

class _UcaazHomeState extends State<UcaazHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff075e6d),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("s"),
                  Column(
                    children: const [
                      Text(
                        "Deliver to",
                        style:
                            TextStyle(color: Color(0xfffcf7f1), fontSize: 16),
                      ),
                      Text(
                        "Gulshan e iqbal 13D..",
                        style:
                            TextStyle(color: Color(0xfffcf7f1), fontSize: 16),
                      ),
                    ],
                  ),
                  const Text("s"),
                ],
              ),
              const SizedBox(height: 20),
              const Image(
                  image: AssetImage("assets/logo.png"),
                  height: 200,
                  width: 200),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Enjoy grocery shoping from the comfort of your home",
                  style: TextStyle(color: Color(0xfffcf7f1), fontSize: 18),
                ),
              ),
              Container(
                color: const Color(0xfffcf7f1),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.fire_truck_outlined,
                            size: 40,
                            color: Color(0xff075e6d),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Free",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          ),
                          Text(
                            "shipping",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.fire_truck_outlined,
                            size: 40,
                            color: Color(0xff075e6d),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Free",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          ),
                          Text(
                            "shipping",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.fire_truck_outlined,
                            size: 40,
                            color: Color(0xff075e6d),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Free",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          ),
                          Text(
                            "shipping",
                            style: TextStyle(
                                color: Color(0xff075e6d), fontSize: 16),
                          )
                        ],
                      )
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
