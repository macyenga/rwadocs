import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rwadocs/Aimation/Fade_animation.dart';
import 'package:rwadocs/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class AllDocScreen extends StatefulWidget {
  @override
  _AllDocScreenState createState() => _AllDocScreenState();
}

class _AllDocScreenState extends State<AllDocScreen> {
  int checkedIndex1 = -1;
  Widget buildAllDocCard(int index, String firstname, String lastname,
      String speciality, String uid) {
    bool checked = index == checkedIndex1;

    return GestureDetector(
      onTap: () {
        // if (checkedIndex1 == -1) {
        //   setState(() {
        //     checkedIndex1 = index;
        //   });
        // } else if (checkedIndex1 == index) {
        //   setState(() {
        //     checkedIndex1 = -1;
        //   });
        // } else {
        //   setState(() {
        //     checkedIndex1 = index;
        //   });
        // }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
                firstname + " " + lastname,
                'Heart Surgeon - Flower Hospitals',
                'assets/images/doctor1.png',
                uid),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Container(
            // width: MediaQuery.of(context).size.width * 0.5,
            child: Card(
              color: checked ? Colors.orange : Colors.white,
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.circular(12),
              // ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 1, bottom: 1, left: 2, right: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstname + " " + lastname,
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              speciality,
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Experience',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '4+ years',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Patients',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              '15 K',
                              style: TextStyle(fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Consultant fee',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Rs: 1500 upwards',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blue[800]),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ClipRRect(
                            child: Image.asset(
                              "assets/images/doctor1.png",
                              // width: MediaQuery.of(context).size.width * 0.15,
                              // width: double.infinity,
                              // it cover the 25% of total height
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      1.2,
      Scaffold(
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: Firestore.instance.collection('doctors').snapshots(),
                builder: (context, snapshot) {
                  if (!(snapshot.hasData)) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    print(snapshot.data.documents.runtimeType);
                    List<DocumentSnapshot> docData = snapshot.data.documents;

                    return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot
                            .data.documents.length, //data.length,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio:
                                    MediaQuery.of(context).size.width /
                                        (MediaQuery.of(context).size.height *
                                            0.5 /
                                            1),
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          print(docData[index]['uid']);
                          return buildAllDocCard(
                              index,
                              docData[index]['firstname'],
                              docData[index]['lastname'],
                              docData[index]['speciality'],
                              docData[index]['uid']);
                        });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
