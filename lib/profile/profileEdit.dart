import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ProfileEdit extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileEdit> {


TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  

  _showMsg(msg) {
    //
    final snackBar = SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

    ////////////////////////   Date Picker   //////////////////
  // String t = "text";
  DateTime selectedDate = DateTime.now();
 // final f = new DateFormat('yyyy-MM-dd');
  String date = 'user Birth Date';//DateFormat("yyyy-MM-dd").format(DateTime.now()).toString();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1964, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        date = "${DateFormat("yyyy-MM-dd").format(selectedDate)}";
        // Navigator.pop(context);
        // _showDialog(context);
        // date == ''? null : _onStatusPostponed();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 23.0, color: Colors.white),
        ),
        centerTitle: true,
        
      ),
      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFFFFFFF),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height / 2) - 100,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      // alignment: Alignment(),
                      image: AssetImage('assets/img/signin2.png'),
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(0.9), BlendMode.overlay),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  ////// Logo Start ///////////
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 8),
                    width: 140,
                    height: 40,
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         image: AssetImage('assets/img/bahrainlogo.png'),
                    //         fit: BoxFit.fill)),
                    child: Text(
                      'User name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF09324B),
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  /////// Logo End ///////////

                  ////////////////////////////////// mIDDLE Part Start //////////////////////////////////////
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ///////////////// Type Field  Start ///////////////
                        textFieldContainer("Full Name", nameController,TextInputType.text, "User Full Name"),
                        textFieldContainer("Email", emailController,TextInputType.emailAddress, "User Email Address"),

                        /////////////////  DOB Input Field Start///////////////
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 30, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  'Date Of Birth',
                                  style: TextStyle(
                                      color: Color(0XFF09324B).withOpacity(0.6),
                                      fontSize: 12,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){ _selectDate(context); },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF8F8F8),
                                    borderRadius:BorderRadius.all(Radius.circular(1)),
                                    border: Border.all(color: Color(0xFF67C8FE),)
                                  ),
                                  child: Text(date,
                                  style: TextStyle(
                                      color: Color(0xFF09324B),
                                      fontSize: 16,
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),),
                                ),
                              )
                            ],
                          ),
                        ),
                        /////////////////  DOB Input Field  End///////////////

                     
                        ///////////////// Type Field End ///////////////
                      ],
                    ),
                  ),
                  ////////////////////////////// mIDDLE Part End //////////////////////////////////

                  //////////////////////////////// Bottom Part Start ///////////////////////////////////
                  Container(
                    //color: Colors.yellow,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /////////////////   Profile Button Start   ///////////////
                        Container(
                            margin: EdgeInsets.only(
                                left: 30, right: 30, bottom: 15),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: RaisedButton(
                              onPressed: () {}, //_login,
                              child: Text(
                                'Update Information',
                               // textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 16.0,
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              color: Color(0XFF67C8FE),
                              elevation: 2.0,
                            )),
                        ///////////////// Update Information End///////////////

                        
                      ],
                    ),
                  )
             ////////////////////////////////// Bottom Part End /////////////////////////////////////
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }



   Container textFieldContainer(String title, TextEditingController controller,
      TextInputType type, String hint) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              title, //'Full Name',
              style: TextStyle(
                  color: Color(0XFF09324B).withOpacity(0.6),
                  fontSize: 12,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextField(
            style: TextStyle(color: Color(0xFF000000)),
            cursorColor: Color(0xFF9b9b9b),
            controller: controller,
            keyboardType: type,
            // controller: nameController,
            // keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(color: Color(0xFF67C8FE), width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(color: Color(0xFF67C8FE), width: 1)),
              hintText: hint, //"Nazmul Alam Shipu",
              hintStyle: TextStyle(
                  color: Color(0xFF09324B),
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold),
              contentPadding: EdgeInsets.only(left: 12, bottom: 12, top: 12),
              fillColor: Color(0xFFF8F8F8),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }

}
