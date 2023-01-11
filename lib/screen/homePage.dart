import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:traveling_ui/widgets/custom_icon_button.dart';
import 'package:traveling_ui/widgets/location_card.dart';
import 'package:traveling_ui/widgets/nearby_places.dart';
import 'package:traveling_ui/widgets/recommended.dart';
import 'package:traveling_ui/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text("Good Morning"),
            Text(
              "Tetteh Jeron Asiedu",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
        CustomIconButton(
            icon: Icon(Ionicons.search_outline),
         ),
         Padding(
           padding: EdgeInsets.only(left: 8.0 , right: 12),
           child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
           ),
         ),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children:  [
           const LocationCard(),

           const SizedBox(height: 15,),

           const TouristPlaces(),

           const SizedBox(height: 10,),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommendation",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text("View All"),
                ),
              ],
            ),

           const SizedBox(height: 10,),
           const Recommended(),
           const SizedBox(height: 10,),

          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby From You",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text("View All"),
                ),
              ],
            ),
           const SizedBox(height: 10,),
           const NearbyPlaces(),  
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: "Person",
          ),
        ],
      ),
    );
  }
}