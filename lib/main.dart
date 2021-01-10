import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabbedSignIn(),
    );
  }
}

class TabbedSignIn extends StatefulWidget {

  @override
  _TabbedSignInState createState() => _TabbedSignInState();
}

class _TabbedSignInState extends State<TabbedSignIn> {
  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        bottomNavigationBar: BottomAppBar(
          color: Colors.redAccent,
          child: Container(
            margin: EdgeInsets.only(bottom: 50),
            child: TabBar(
              labelColor: Colors.redAccent,
              labelStyle: TextStyle(fontSize: 30, color: Colors.redAccent, fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white
              ),
              tabs: [
                Tab(
                 child: Container(
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.white, width: 1),
                     borderRadius: BorderRadius.circular(60),
                   ),
                   child: Align(alignment: Alignment.center, child: Text("Sign In",)),
                 ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Align(alignment: Alignment.center, child: Text("Sign Up",)),
                  ),
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login", style: TextStyle(fontSize: 80, color: Colors.white, fontWeight: FontWeight.bold),),
                      SizedBox(height: 50,),
                      TextFormField(
                        showCursor: false,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email, color: Colors.white, size: 25,),
                          hintText: "Email Address",
                          hintStyle: TextStyle(fontSize: 25, color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50)
                          )
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Remember me', style: TextStyle(fontSize: 20, color: Colors.white),),
                          Switch(
                            value: switched,
                            onChanged: (value){
                              setState(() {
                                switched = value;
                              });
                            },
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.grey[300],
                            inactiveThumbColor: Colors.grey[300],
                          )
                        ],
                      ),
                      TextFormField(
                        showCursor: false,
                        obscureText: true,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, color: Colors.white, size: 25,),
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 25, color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 1.5),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(50)
                            )
                        ),
                      ),
                      SizedBox(height: 25,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 2)
                        ),
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                          child: OutlineButton(onPressed: (){}, child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.white)),)),
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(text: 'Not a member? ', style: TextStyle(fontSize: 20, color: Colors.white),
                              children: [
                                TextSpan(text: 'Register!', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold))
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login", style: TextStyle(fontSize: 80, color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(height: 50,),
                        TextFormField(
                          showCursor: false,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.white, size: 25,),
                              hintText: "Email Address",
                              hintStyle: TextStyle(fontSize: 25, color: Colors.white),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Remember me', style: TextStyle(fontSize: 20, color: Colors.white),),
                            Switch(
                              value: switched,
                              onChanged: (value){
                                setState(() {
                                  switched = value;
                                });
                              },
                              activeColor: Colors.white,
                              inactiveTrackColor: Colors.grey[300],
                              inactiveThumbColor: Colors.grey[300],
                            )
                          ],
                        ),
                        TextFormField(
                          showCursor: false,
                          obscureText: true,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.white, size: 25,),
                              hintText: "Password",
                              hintStyle: TextStyle(fontSize: 25, color: Colors.white),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(50)
                              )
                          ),
                        ),
                        SizedBox(height: 25,),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.white, width: 2)
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: OutlineButton(onPressed: (){}, child: Text("Login", style: TextStyle(fontSize: 25, color: Colors.white)),)),
                        SizedBox(height: 50,),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(text: 'Not a member? ', style: TextStyle(fontSize: 20, color: Colors.white),
                                children: [
                                  TextSpan(text: 'Register!', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold))
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ),
          ],
        )
      ),
    ));
  }
}
