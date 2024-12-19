import 'package:flutter/material.dart';
import 'package:flutter_dictionary/pages/homepage_control.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppNotify>(builder: (context, appnotify, child) {
      final TextEditingController mycontroller =
          TextEditingController(text: appnotify.name);

      return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 40.0),
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dictionary',
                    style: TextStyle(fontSize: 50.0, fontFamily: 'Agbalumo'),
                  ),
                  SizedBox(height: 10.0),

                  //Text Field with icon

                  TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsetsDirectional.all(30.0),
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 2),
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: "Enter Your Word",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              color: Color(0xFF757575),
                              Icons.search,
                              size: 40.0,
                            ),
                          ))),
                  SizedBox(height: 10.0),

                  //Pronanciation Row

                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0xff6D5D5D), width: 1.0)),
                          child: Icon(Icons.volume_up,
                              size: 30.0, color: Color(0xffFC914E))),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Design",
                        style: TextStyle(
                            color: Color(0xffFC914E),
                            fontSize: 30.0,
                            fontFamily: 'poppins'),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),

                      // Translate Button code here

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        child: Text(
                          "Translate",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "poppins",
                              color: Color(0xffFC914E)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 60.0),

              //Meaning Row

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "noun",
                        style:
                            TextStyle(fontFamily: "Agbalumo", fontSize: 15.0),
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      SizedBox(
                        width: 100.0,
                      ),
                      Text(appnotify.name,
                          style: TextStyle(fontFamily: "poppins"))
                    ],
                  ),
                  //Suggesion Words
                  SizedBox(height: 100.0),
                  Row(
                    children: [
                      Text("similar",
                          style: TextStyle(
                              fontFamily: "Agbalumo", fontSize: 15.0)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
