import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/im_party.jpeg"),
                  fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,colors: [
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.4),
              Colors.black.withOpacity(.1),
            ]
            )
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Text("Find the best parties near you.",style:
                TextStyle(color:
                Colors.yellow,fontSize: 40,fontWeight: FontWeight.bold,height: 1.1),),
                SizedBox(height: 50,),
                Text("Let us find you a party for your interest",style:
                  TextStyle(color: Colors.lightGreen,fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 420,),
                _isLogin?
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange
                  ),
                  child: Center(
                    child: Text("Start",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ):
                Container(
                  child: Row(
                      children:[
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.red
                            ),
                            child: Center(
                              child: Text("Google",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue
                            ),
                            child: Center(
                              child: Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 18),),
                            ),
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
