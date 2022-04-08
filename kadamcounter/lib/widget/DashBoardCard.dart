import 'package:flutter/material.dart';
import 'package:kadamcounter/widget/imageContainer.dart';
import 'package:kadamcounter/widget/textWidget.dart';
import 'package:progress_meter/progress_meter.dart';


class dashboardCard extends StatelessWidget {
  int steps;

  double miles, calories, duration;

  dashboardCard(this.steps, this.miles, this.calories, this.duration,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff111340),
                  Color(0xff111328),

                ]),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),Container(
              child: ProgressMeter(
                begin: 0.0,
                end: 2,
                color: Colors.red,
                duration: 4,


              ),
            ),

            Container(
              width: 150,
              child: text(50, steps.toString()),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                imageContainer(
                    "assets/locations.png", miles.toStringAsFixed(3), "Miles"),
                imageContainer("assets/fire.png",
                    calories.toStringAsFixed(3), "Calories"),
                imageContainer("assets/time.png",
                    duration.toStringAsFixed(3), "Duration"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
