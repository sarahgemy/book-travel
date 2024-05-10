import 'package:flutter/material.dart';
import 'package:msh/core/toast.dart';
import 'package:msh/screens/home/view.dart';

import '../../core/app_input.dart';
import '../../core/helper_methods.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  bool isCash = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Payment methods"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/free-photo/front-view-hand-holding-airplane-figurine-with-copy-space_23-2148775844.jpg?w=2000&t=st=1681337394~exp=1681337994~hmac=7e83e2547940e0e14aaef2007dc3fddc2ba9e8039afd478cd65fb077df861c4b",
              height: 150,
            ),
            const Text("Choose\nA payment method",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2F1F2B))),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isCash = true;
                      setState(() {});
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: !isCash
                              ? Colors.blue.withOpacity(.2)
                              : Colors.blue,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text("Cash",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: isCash ? Colors.white : Colors.black)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isCash = false;
                      setState(() {});
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: isCash
                              ? Colors.blue.withOpacity(.2)
                              : Colors.blue,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                        child: Text("Credit Card",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: !isCash ? Colors.white : Colors.black)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(isCash ? "Cash" : "Credit Card",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 35,
            ),
            isCash
                ? const Text(
                    "With this option you will pay full amount after we deliver your order to your address",
                    style: TextStyle(fontSize: 18),
                  )
                : const SizedBox.shrink(),
            isCash
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppInput(
                        label: "Card number",
                        hint: "oooo " * 4,
                        keyBoardType: TextInputType.number,
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      Row(
                        children: const [
                          Expanded(
                            flex: 3,
                            child: AppInput(
                              label: "Expiry date",
                              hint: "MM/YY",
                              keyBoardType: TextInputType.number,
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: AppInput(
                              label: "CVV",
                              hint: "...",
                              keyBoardType: TextInputType.number,
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                      const AppInput(
                        label: "Cardholder name",
                        hint: "Enter full name",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                    ],
                  ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () async {
                  Toast.show(
                    "Travel Reversed Successfully",
                    context,
                  );

                  await navigateTo(context,
                      page: HomeView(), leaveHistory: false);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(350, 50)),
                child: const Text("Continue"))
          ],
        ),
      ),
    );
  }
}
