import 'package:flutter/material.dart';
import 'package:riser/Screens/profile/profileEdit.dart';

import 'editPassword.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 23.0, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.mode_edit,
              size: 35.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProfileEdit();
              }));
            },
          ),

          IconButton(
            icon: Icon(
              Icons.vpn_key,
              size: 35.0,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return EditPassword();
              }));
            },
          ),
        ],
      ),
     
     body: SafeArea(
        child: SingleChildScrollView(
          child: new Container(
              padding: EdgeInsets.all(0.0),
              child: Column(
                children: <Widget>[
                  ///////////  profile name and picture start ///////////

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ///////////  profile  picture start ///////////
                        Container(
                          padding: EdgeInsets.all(1.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.transparent,
                           
                          ),
                          decoration: new BoxDecoration(
                            color: Colors.grey, // border color
                            shape: BoxShape.circle,
                          ),
                        ),

                        ///////////  profile picture end ///////////
                        SizedBox(
                          width: 10,
                        ),

                        ///////////  profile name start ///////////
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Hello,",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black38),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                 "User Name",
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(width: 2.0),
                                Text(
                                 "",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),

                        ///////////  profile name end ///////////
                      ],
                    ),
                  ),

                  ///////////  profile name and picture end ///////////

                  Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 2,
                      child: Divider()),

                  // ///////////  Phone  ///////////

                  // profileInfo(
                  //     Icon(
                  //       Icons.phone,
                  //       color: Colors.grey,
                  //     ),
                  //     "Phone",
                  //     "01xxxxxxxxx"),

                  // Container(
                  //     margin: EdgeInsets.only(top: 0),
                  //     height: 2,
                  //     child: Divider()),

                  ///////////  Email ///////////

                   profileInfo(
                      Icon(
                        Icons.email,
                        size: 22.0,
                        
                        color: Colors.blueGrey,
                      ),
                      "Email",
                      "email@email.com"),

                  Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 2,
                      child: Divider()),

                  ///////////  Address  ///////////

                  profileInfo(
                      Icon(
                        Icons.date_range,
                         size: 22.0,
                        color: Colors.blueGrey,
                      ),
                      "Birth Date",
                      "XXXX-XX-X"),

                  Container(
                      margin: EdgeInsets.only(top: 0),
                      height: 2,
                      child: Divider()),

               ///////////  Country   ///////////

                

               
                ],
              )),
        ),
      ),
    );
    
}

Container profileInfo(Icon icon, String label, String data) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            icon,
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      label,
                      style: TextStyle(
                          color: Colors.black87, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 8, top: 3),
                      child: Text(
                        data,
                        style: TextStyle(color: Colors.black38, fontSize: 15),
                      ))
                ],
              ),
            ),
          ],
        ));
  }

}
