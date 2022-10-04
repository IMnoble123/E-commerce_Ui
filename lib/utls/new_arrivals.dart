import 'package:flutter/material.dart';

class UpComming extends StatelessWidget {
  const UpComming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/newarrivals.jpg'),fit: BoxFit.cover),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            top: 5,
            child: Text(
              "New Arrival",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(20)),
                  color:Colors.white),
              padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded))
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 30,left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Special Offer',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                 
                ],
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}