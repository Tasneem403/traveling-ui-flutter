import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:traveling_ui/model/recommended_model.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedModel[index].image,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                          height: 150,
                          ),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                        Text(
                            recommendedModel[index].location,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                         const Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                         const Text(
                            "4.4",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),  
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                         const SizedBox(width: 5,),
                         const Text(
                          "French Polynesia",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                onTap: (){},
              ),
            ),
          );
        },
        separatorBuilder: (context , index) =>
        const Padding(
          padding: EdgeInsets.only(right: 10),
          ),
        itemCount: recommendedModel.length,
        ),
    );
  }
}