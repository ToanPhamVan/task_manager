import 'package:flutter/material.dart';
import 'package:task_management/Screens/MenuPage.dart';
import 'package:task_management/components/upper_header.dart';
// import 'package:tms/Screens/MenuPage.dart';
// import 'package:tms/components/upper_header.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(left: he * 0.03, right: he * 0.03),
            child: Column(
              children: [
                upperHeader('Contact Us', context, true, const menuPage()),
                SizedBox(
                  height: he * 0.02,
                ),
                SizedBox(
                  height: he * 0.27,
                  width: he * 0.35,
                  child: Image.asset('assets/contact_img.jpg'),
                ),
                Text(
                  'We are here to help you',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: he * 0.05,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: he * 0.03,
                      right: he * 0.03,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter your name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Message',
                            hintText: 'Enter your message',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: double.infinity,
                            height: he * 0.06,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Send"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey.shade900,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0))),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
