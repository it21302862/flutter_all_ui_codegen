import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            color: const Color(0xFFF5F5F5),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 32),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/mail.png', width: 200),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // const Text(
                  //   "Enter verification code that send to sanayasamadhi@gmail.com email",
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.black38,
                  //   ),
                  //   textAlign: TextAlign.center,
                  // ),
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Enter verification code that send to ',
                          ),
                          TextSpan(
                            text: 'sanayasamadhi@gmail.com ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'email',
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  // Column(
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment:
                  //           MediaQuery.of(context).size.width < 600
                  //               ? MainAxisAlignment.spaceAround
                  //               : MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         _textFieldOTP(first: true, last: false),
                  //         _textFieldOTP(first: false, last: false),
                  //         _textFieldOTP(first: false, last: false),
                  //         _textFieldOTP(first: false, last: true),
                  //       ],

                  //     ),
                  //     const SizedBox(
                  //       height: 22,
                  //     ),
                  //   ],
                  // ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MediaQuery.of(context).size.width < 600
                                ? MainAxisAlignment.spaceAround
                                : MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          if (MediaQuery.of(context).size.width >= 600) 
                          const SizedBox(width: 10),
                          _textFieldOTP(first: false, last: false),
                          if (MediaQuery.of(context).size.width >= 600)
                          const SizedBox(width: 10),
                          _textFieldOTP(first: false, last: false),
                          if (MediaQuery.of(context).size.width >= 600)
                          const SizedBox(width: 10),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 18,
                  ),
                  const Center(
                    child: Text(
                      "Enter 4 digit code",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(95, 128, 128, 128),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    double sizedBoxHeight =
        MediaQuery.of(context).size.width < 600 ? 50.0 : 90.0;
    return SizedBox(
      height: sizedBoxHeight,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
