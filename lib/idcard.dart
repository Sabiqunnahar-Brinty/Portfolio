import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

class idcard extends StatefulWidget {
  const idcard({Key? key}) : super(key: key);

  @override
  _idcardState createState() => _idcardState();
}

class _idcardState extends State<idcard> {
  void customLauncher(command) async {
    if(await canLaunch(command)){
      launch(command);
    }
    else{
      print("Fail to Launch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Sabiqunnahar Brinty",
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/brinty.jpg") ,
              radius: 100,
            ),
            SizedBox(height: 15,
            ),
            Text("Sabiqunnahr Brinty",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),

            Text("Software engineer",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,),
              child: Divider(
                thickness: 5,
                  color: Colors.black45,
              ),
            ),

            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                customLauncher("tel: 01994250570");
              },
              child: Container(
                color: Colors.white,
                height: 45,
                width: 310,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.call,
                      size: 30,
                      ),
                      SizedBox(width: 15,),
                      Text("01994250570",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,

                      ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            GestureDetector(
              onTap: (){
                customLauncher("mailto: sabiqunnaharbrinty717@gmail.com");
              },
              child: Container(
                color: Colors.white,
                height: 45,
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.mail,
                        size: 30,
                      ),
                      SizedBox(width: 15,),
                      Text("sabiqunnaharbrinty717@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,

                        ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            GestureDetector(
              onTap: (){
                customLauncher("sms: 01994250570");
              },
              child: Container(
                color: Colors.white,
                height: 45,
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.sms,
                        size: 30,
                      ),
                      SizedBox(width: 15,),
                      Text("Send a SMS ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,

                        ),),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );

  }
}
