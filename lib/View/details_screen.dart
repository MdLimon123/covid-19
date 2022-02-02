import 'package:covid19/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

  String name;
  String image;
  int? totalCases, totalDeaths, totalRecovered,active,critical,todayRecovered,tests;

   DetailScreen({
    required this.image,
     required this.name,
     required this.totalCases,
     required this.totalDeaths,
     required this.todayRecovered,
     required this.active,
     required this.critical,
     required this.totalRecovered,
     required this.tests,
   });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * .06,),
                child: Card(
                  child: Column(
                    children: [
                      Reusable(title: 'Cases', value: widget.totalCases.toString(),),
                      Reusable(title: 'Recovered', value: widget.totalRecovered.toString(),),
                      Reusable(title: 'Critical', value: widget.critical.toString(),),
                      Reusable(title: 'Death', value: widget.totalDeaths.toString(),),
                      Reusable(title: 'TodayRecover', value: widget.todayRecovered.toString(),),

                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
