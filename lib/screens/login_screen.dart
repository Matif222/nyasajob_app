import 'package:flutter/material.dart';
import 'package:nyasajob_app/screens/sign_up_screen.dart';
import 'package:nyasajob_app/widgets/button.dart';
import 'package:nyasajob_app/widgets/text_field_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController textController1 = TextEditingController();

  final TextEditingController textController2 = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // titleSpacing: double.maxFinite,
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage('assets/images/nyasalogo.png'),
              height: 55,
              width: 133,
            ),
            Container(
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(5)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text('Sign up',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpeg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
            child: Column(
              children: [
                // AppBar(
                //   backgroundColor: Colors.transparent,
                //   elevation: 1,
                //   title: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       const Image(
                //         image: AssetImage('assets/images/nyasalogo.png'),
                //         height: 50,
                //         width: 150,
                //       ),
                //       Container(
                //         height: 35,
                //         width: 100,
                //         decoration: BoxDecoration(
                //             color: Colors.yellow,
                //             borderRadius: BorderRadius.circular(5)),
                //         child: const Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //             Icon(Icons.person),
                //             Text('Sign up',
                //                 style: TextStyle(
                //                     fontSize: 18,
                //                     color: Colors.black,
                //                     fontWeight: FontWeight.bold)),
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hi,",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                MyTextForm(
                  labalName: 'User Name',
                  hintName: 'Enter your user Name',
                  colorName: Colors.white,
                  controller: textController1,
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  textInputType: TextInputType.emailAddress,
                ),
                MyTextForm(
                  labalName: 'Password',
                  hintName: 'Type your password',
                  colorName: Colors.white,
                  controller: textController2,
                  icon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  textInputType: TextInputType.text,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Remember Me',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                MyButton(
                  name: 'Log In',
                  color: const Color(0xFF5D17EB),
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                ),
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forgot password',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
