import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
            "images/map11.png",
            width: 100,
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Location",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Theme.of(context).primaryColor
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  "United States, New york",
                  style: Theme.of(context).textTheme.labelLarge,
                  )  
              ],
            )
          ],
        ),
      ),
    );
  }
}