import 'package:ai_beds_all_ui/screens/login_screen.dart';
import 'package:ai_beds_all_ui/screens/otp_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Container(
              // width: 800,
              width: MediaQuery.of(context).size.width * 0.7,
              color: const Color(0xFFF5F5F5),
              child: ListView(
                children: [
                  Image.asset(
                    "assets/images/logo_blue.png",
                    // width: 130,
                    // height: 130,
                    width: MediaQuery.of(context).size.width * 0.136,
                    height: MediaQuery.of(context).size.width * 0.086,
                  ),
                  if (MediaQuery.of(context).size.width <
                      600) // Adjust the breakpoint
                    const SizedBox(height: 16),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Welcome back to ',
                          ),
                          TextSpan(
                            text: 'AI.Beds',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ', enter your details',
                          ),
                        ],
                      ),
                    ),
                  ),

                  const Center(
                    child: Text(
                      'below to continue',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 243, 244, 245)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(Icons.email),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      obscureText: true, //to secret
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 247, 247, 247)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      obscureText: true, //to secret
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 247, 247, 247)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: [
                        Checkbox(value: true, onChanged: (bool? value) {}),
                        const Text(
                          'Remember me',
                          style: TextStyle(color: Color(0xFF979797)),
                        ),
                      ],
                    ),
                  ),
                  if (MediaQuery.of(context).size.width <
                      600) // Adjust the breakpoint
                    const SizedBox(height: 30),
                  if (MediaQuery.of(context).size.width >
                      600) // Adjust the breakpoint
                    const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor:
                          const Color(0xFF979797), // Set the text color
                    ),
                    child: const Text('Forgot password?'),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 182, 172, 245), // Set the button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the corner radius
                        ),
                      ),
                      child: SizedBox(
                        // width: 300,
                        // height: 50,
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.09,
                        child: const Center(
                          child: Text('CONTINUE'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), // Adjust the spacing as needed
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Color(0xFFC4C4C4)),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Set the button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the corner radius
                        ),
                        fixedSize: const Size(300, 45),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Add the Google image here
                          Image.asset('assets/images/google-icon.png',
                              width: 20, height: 20),
                          const SizedBox(width: 16.0),
                          const Text('Continue With Google',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 17, 16, 16))),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Set the button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the corner radius
                        ),
                        fixedSize: const Size(300, 45),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Add the Google image here
                          Image.asset('assets/images/apple-icon.png',
                              width: 20, height: 20),
                          const SizedBox(width: 16.0),
                          const Text('Continue With Apple',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 17, 16, 16))),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          const TextSpan(
                            text: "Already have an account? ",
                          ),
                          TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4169E1),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
