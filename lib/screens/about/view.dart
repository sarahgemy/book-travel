import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16, left: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.7),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "As markets change constantly, you need a logistical solution that is reliable and mitigates uncertainty without compromising on your convenience. Air Plane Company lets you stay prepared for any opportunity or disruptions by addressing multiple aspects of your cargo’s journey, from origin till the destination. What's more, it's completely digital, accessible from Maersk.com or the Maersk App, and gives you the power to book and modify shipments on the go.",
                    style: TextStyle(
                      fontSize: 25,
                      // color: Colors.b
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
