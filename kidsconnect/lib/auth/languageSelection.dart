import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/verifiedSuccess");
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 60.0),
              child: Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[300],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                color: Colors.grey[400],
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                // ignore: prefer_const_constructors
                child: Center(
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('india.jpg'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('Malaysia.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('German.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('UAE.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('Bangladesh.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
