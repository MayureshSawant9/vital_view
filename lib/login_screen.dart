import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  var loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.77),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.png'),
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Welcome to Vital View',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2E00B2),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: const BoxDecoration(
                                  color: Color(0xffbeb8d9),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15)),
                                ),
                                child: const Center(
                                  child: Text('Login'),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => print('Maa ki chut'),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffA29DD9),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                height: 60,
                                width: MediaQuery.of(context).size.width / 2,
                                child: const Center(
                                  child: Text('New User'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 550,
                          width: MediaQuery.of(context).size.width,
                          color: const Color(0xffBEB8FF),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              SizedBox(
                                height: 100,
                                width: 200,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    label: Text('Login'),
                                  ),
                                  controller: loginController,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 100,
                                width: 200,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    label: Text('Password'),
                                  ),
                                  controller: loginController,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print('Maa ki chut');
                                },
                                child: Text('Continue'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
