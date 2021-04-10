import 'package:flutter/material.dart';

class LostDogPage extends StatefulWidget {
  @override
  _LostDogPageState createState() => _LostDogPageState();
}

class _LostDogPageState extends State<LostDogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
          title: Text(" Lost Pets"),
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_circle,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddNewCase()));
          },
        ),
        body: Center(
          child: Column(
            children: [
              LostDogWidget(),
            ],
          ),
        ));
  }
}

class LostDogWidget extends StatefulWidget {
  @override
  _LostDogWidgetState createState() => _LostDogWidgetState();
}

class _LostDogWidgetState extends State<LostDogWidget> {
  Widget ShowImage(String photoURL) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.dstIn),
          fit: BoxFit.cover,
          image: AssetImage(photoURL),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShowImage("assets/dog.jpg"),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Owner : ",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Text(
                    "Owner's Name ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    // textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Seen : ",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Text(
                    "Time and place ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Other : ",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Text(
                    "text.... ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 25, 25, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Inform",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Inform",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddNewCase extends StatefulWidget {
  @override
  _AddNewCaseState createState() => _AddNewCaseState();
}

class _AddNewCaseState extends State<AddNewCase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        title: Text(" Add new case"),
      ),
      body: Center(child: Text("addnewCase")),
    );
  }
}
