import 'package:flutter/material.dart';
import 'package:kidsconnect/component/controlElement.dart';
//import 'package:kidsconnect/component/dropdownList.dart';

class ParentalControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Colors.teal[200]!, Colors.teal[600]!]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Text(
                      'PARENTAL CONTROL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'Avatar3.png',
                width: 200.0,
                height: 200.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ControlElement(
                      controlName: 'Turn off google ads and pop-ups',
                    ),
                    ControlElement(
                      controlName: 'Profile privacy changes',
                    ),
                    ControlElement(
                      controlName: 'Filter web browser changes',
                    ),
                    Row(
                      children: [
                        Text(
                          'Set screen time',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        // Example of a toggle button
                        //DropdownExample(),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              SizedBox(
                width: 150.0,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/selectLanguages");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text(
                        'APPLY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
