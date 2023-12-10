import 'package:flutter/material.dart';
import 'package:nyasajob_app/widgets/button.dart';
import 'package:nyasajob_app/widgets/text_field_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String selectedPosition = 'Job Seeker';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage('assets/images/nyasalogo.png'),
              height: 51,
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
                  Text('Log in',
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                    ),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      MyTextForm(
                        labalName: 'Name',
                        hintName: 'Enter your  Name',
                        colorName: Colors.white,
                        controller: nameController,
                        icon: const Icon(
                          Icons.card_membership,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      MyTextForm(
                        labalName: 'User Name',
                        hintName: 'Type your User Name',
                        colorName: Colors.white,
                        controller: userController,
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      MyTextForm(
                        labalName: 'Email',
                        hintName: 'Type your Email',
                        colorName: Colors.white,
                        controller: emailController,
                        icon: const Icon(
                          Icons.alternate_email,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RadioListTile<String>(
                            title: Text('Job Seeker'),
                            value: 'Job Seeker',
                            groupValue: selectedPosition,
                            onChanged: (value) {
                              setState(() {
                                selectedPosition = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('Employeer'),
                            value: 'Employeer',
                            groupValue: selectedPosition,
                            onChanged: (value) {
                              setState(() {
                                selectedPosition = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      MyTextForm(
                        labalName: 'New Password',
                        hintName: 'Create new Password',
                        colorName: Colors.white,
                        controller: passwordController,
                        icon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      MyTextForm(
                        labalName: 'Confirm Password',
                        hintName: 'Confirm you password',
                        colorName: Colors.white,
                        controller: cPasswordController,
                        icon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.text,
                      ),
                      MyTextForm(
                        labalName: 'Phone Number',
                        hintName: '+20004320100',
                        colorName: Colors.white,
                        controller: phoneController,
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        textInputType: TextInputType.phone,
                      ),
                      MyButton(
                        name: 'Sign up',
                        color: const Color(0xFF5D17EB),
                        onPress: () {},
                      ),
                    ])))
          ],
        ),
      ),
    );
  }
}
