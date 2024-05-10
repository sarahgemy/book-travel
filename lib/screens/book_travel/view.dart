import 'package:flutter/material.dart';

import '../payment_methods/view.dart';

class BookTravelView extends StatefulWidget {
  const BookTravelView({Key? key}) : super(key: key);

  @override
  State<BookTravelView> createState() => _BookTravelViewState();
}

class _BookTravelViewState extends State<BookTravelView> {
  String? selectedValue;
  DateTimeRange? dateTimeRange;
  List<String> list = [
    "Indian",
    "Paris",
    "Egypt",
    "Italy",
    "Turkey",
    "Maldives",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Travel"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.network(
            "https://img.freepik.com/free-icon/plane-silhouette_318-1385.jpg?w=1380&t=st=1681336528~exp=1681337128~hmac=39c4fe4cee383be8f062d12063987a3df2dbd6971a638d9253c9001e0b2c25be",
            height: 150,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: "Name",
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: "Number of Persons",
                prefixIcon: Icon(
                  Icons.numbers,
                  color: Colors.blue,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () async {
              dateTimeRange = await showDateRangePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)));
              setState(() {});
            },
            child: TextFormField(
              keyboardType: TextInputType.datetime,
              enabled: false,
              decoration: InputDecoration(
                  labelText: dateTimeRange != null
                      ? "From ${dateTimeRange!.start.toString().split(" ").first} ------> To ${dateTimeRange!.end.toString().split(" ").first}"
                      : "Travelling Date",
                  prefixIcon: Icon(
                    Icons.date_range_rounded,
                    color: Colors.blue,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey)),
            child: DropdownButton(
              isExpanded: true,
              value: selectedValue,
              hint: Text("Select Destination"),
              underline: SizedBox.shrink(),
              items: List.generate(
                  list.length,
                  (index) => DropdownMenuItem(
                        child: Text(list[index]),
                        value: list[index],
                      )),
              onChanged: (value) {
                selectedValue = value;
                setState(() {});
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentMethods()));
              },
              child: Text("Confirm"))
        ],
      ),
    );
  }
}
