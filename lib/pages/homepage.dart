import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class HomePage extends StatefulWidget {
  const HomePage({key}) : super(key: key);
  //static final id = "HomaPage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Localization")
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text("Welcome",style: TextStyle(color: Colors.black,fontSize: 25),).tr(),
            )),
            Row(
              children: [
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.deepOrange,
                      onPressed: (){
                        context.locale = Locale('ru', 'RU');
                      },
                      child: Text("Rus"),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.yellowAccent,
                      onPressed: (){
                        context.locale = Locale('uz', 'UZ');
                      },
                      child: Text("Uzbek"),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.blue,
                      onPressed: (){
                        context.locale = Locale('en', 'US');
                      },
                      child: Text("English"),
                    )
                ),
                SizedBox(width: 10,),
                Expanded(
                    child: FlatButton(
                      height: 45,
                      color: Colors.red,
                      onPressed: (){
                        context.locale = Locale('fr', 'FR');
                      },
                      child: Text("Fransuz"),
                    )
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
