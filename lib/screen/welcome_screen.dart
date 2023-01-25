import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'),
              fit: BoxFit.cover,
              opacity: 1)),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 25),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              const Text(
                'Experience',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Kerala!',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'The world is a book and those who do not travel read only one page.The journey of a thousand miles begins with a single step.Know our tradition by traveling',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1.2),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                 onTap: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => HomePage()));
                 },
                 child: Ink(
                   padding: const EdgeInsets.all(15),
                   decoration: BoxDecoration(
                       color: Colors.white.withOpacity(0.5),
                       borderRadius: BorderRadius.circular(12)),
                   child: const Icon(
                     Icons.arrow_forward_ios,
                     color: Colors.black,
                     size: 20,
                   ),
                 ),
               )
            ],
          ),
        )),
      ),
    );
  }
}
