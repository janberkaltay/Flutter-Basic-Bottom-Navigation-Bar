import 'package:endless_software/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          decoration: const BoxDecoration(
            color: Color(0xff7D87F5),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const HomePage();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,bottom: 8,top: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000)
                    ),
                    alignment: Alignment.center,
                    height: 34,
                    width: 113,
                    child:  Row(
                      children: const [
                        SizedBox(width: 8),
                        Icon(Icons.home, color: Color(0xff7D87F5)),
                        SizedBox(width: 4),
                        Text('Anasayfa',style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Color(0xff7D87F5)),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8,top: 8, right: 16),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1000)
                      ),
                      alignment: Alignment.center,
                      height: 34,
                      width: 46,
                      child: const Icon(FontAwesomeIcons.circleUser, color: Color(0xff7D87F5),)
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
