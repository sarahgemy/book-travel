import 'package:flutter/material.dart';
import 'package:msh/core/helper_methods.dart';
import 'package:msh/screens/about/view.dart';

import '../book_travel/view.dart';
import 'model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<TravelModel> list = [
    TravelModel(
        imageUrl:
            'https://www.traveldailymedia.com/assets/2021/12/shutterstock_1031949604-4.jpg',
        title: "Indian",
        description: ""),
    TravelModel(
        imageUrl:
            'https://res.klook.com/image/upload/Mobile/City/swox6wjsl5ndvkv5jvum.jpg',
        title: "Paris",
        description: ""),
    TravelModel(
        imageUrl:
            'https://www.weseektravel.com/wp-content/uploads/2022/05/landmarks-in-egypt-1-2.jpg',
        title: "Egypt",
        description: ""),
    TravelModel(
        imageUrl:
            'https://lp-cms-production.imgix.net/features/2017/11/GettyRF_543346423-1-ab159824d5bd.jpg',
        title: "Italy",
        description: ""),
    TravelModel(
        imageUrl: 'https://www.melares.com/uploads/150616275.jpg',
        title: "Turkey",
        description: ""),
    TravelModel(
        imageUrl:
            'https://content.tui.co.uk/adamtui/2021_12/7_13/878f7fde-84ca-4804-85a5-adf700e44176/LOC_MDV_shutterstock_1938868960WebOriginalCompressed.jpg?i10c=img.resize(width:488);img.crop(width:488%2Cheight:274)',
        title: "Maldives",
        description: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Air Plane Company"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                navigateTo(context, page: AboutView());
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 70),
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 200,
          padding: EdgeInsets.all(10),
          alignment: AlignmentDirectional.topStart,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(list[index].imageUrl))),
          child: Container(
            margin: const EdgeInsets.only(right: 16, left: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.7),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              list[index].title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold
                  // color: Colors.b
                  ),
            ),
          ),
        ),
        itemCount: list.length,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            navigateTo(context, page: BookTravelView());
          },
          icon: Icon(Icons.travel_explore),
          label: Text("Book Flight")),
    );
  }
}
