import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Information Technology  Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "Vision and Mission",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) => visionmission(context),
            ),
          ),
          title: Text('Welcome to IT Department'),
          backgroundColor: Colors.green,
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.network(
                    'data:image/jpeg;base64,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',
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '\n\nRecent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall. Ole classroom is ICT enabled with a Wi-Fi projection facility. All floors of the IT department have Wi-Fi connectivity.\n\nThe computing facility in the department includes 155 computers with the latest configuration, and other ICT equipment such as LCD projectors, printers and scanners, and UPS backup. Dr. Vinayak A Bharadi and Prof. Santosh V Jadhav got an NVIDIA GPU Research Grant of Rs. 1.5 Lacs in the form of Titan X Pascal GPU (Graphics Processing Unit) to support research. The Information Technology department also has academic collaboration with NVIDIA for three subjects namely Soft Computing, Big Data Analytics, and Robotics. They will provide course material and hardware support for the conduction of these courses as well as bridge courses under the NVIDIA Developer Center. It Department has conducted Bridge courses in Mobile Cloud Computing, MongoDB Connectivity, Online Payments for E-Biz to make students industry-ready. Besides this IT Department has done a tie-up with Microsoft for conducting Training and Certification under Microsoft Virtual Academy (MVA) for students as well as staff in the domain of IoT and Cyber Security. Department has MoU with Amazon AWS to setup Amazon AWS Academy for the professional training and Certification of the staff and the students, AWS will be giving 50% discount for all the certification and free training for the faculty member under this MoU.\n\nStudents undergo on-field projects so that they can be prepared to face professional challenges. Faculty members and students have published more than 500 papers are in national and international conferences and UGC Approved Journals. Research areas of published works are Cloud Computing, Ubiquitous Computing, Pervasive Computing, Soft computing, etc. Besides this, students are given in house training of GATE examination, aptitude, and other competitive examinations. To make students eligible for international placements and skills required in the MNCs IT Department has signed MoU with Apple Inc. to sept up Apple iOS Developer University Program (iDUP), Apple has provided the Programming platform and training under the same. The department has also set up an Intel Intelligent Systems lab in collaboration with Intel Inc. This lab has hardware and software setup to carry out application development for Smart City Projects, in the domain of the Internet of Things. \n\n',
                      //maxLines: 15,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        child: Text('Intel Centre of Excellence Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => iceLab(context),
                      ),
                      RaisedButton(
                        child: Text('Microsoft Virtual Academy Lab'),
                        onPressed: () => mvaLab(context),
                      ),
                      RaisedButton(
                        child: Text('Apple iOS Developer Centre Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => aidcLab(context),
                      ),
                      RaisedButton(
                        child: Text('Amazon AWS Academy Lab'),
                        onPressed: () => aaaLab(context),
                      ),
                      RaisedButton(
                        child: Text('NVIDIA Developer Program Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => ndpLab(context),
                      ),
                      RaisedButton(
                        child: Text('IBM Lab'),
                        onPressed: () => ibmLab(context),
                      ),
                      RaisedButton(
                        child:
                            Text('Palo Alto Network Cybersecurity Academy Lab'),
                        color: Colors.lightBlueAccent,
                        onPressed: () => pancaLab(context),
                      ),
                    ],
                  ),
                  //Spacer(
                  //  flex: 2,
                  //),
                  RaisedButton(
                    child: Text('Contact Us'),
                    onPressed: () => contactUs(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void visionmission(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Vision and Mission'),
          content: Text(
              'VISION: \nTo provide excellent Information Technology education and aspire to nurture students as leaders who are in tune with global IT Trends \n\nMISSION: \nM1 -	To Enrich students by rigorously implementing quality education \nM2 - To make students industry ready \nM3 -	To imbibe professional ethics and social values in the students and make them responsible citizens'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text(
              'Working Hours: \nMonday to Saturday - 09:00am to 05:30pm. \n\nMail us at hodit@famt.ac.in'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void iceLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/1 - Intel Centre of Excellence'),
          content: Text(
              ' Name of Industrial/Research partner: Intel Inc \n\n Nature of MOU/Support given by the industry: Laboratory Setup, Faculty Training \n\n Outcome of MOU/Program: IoE Mini Projects, TE IT Mini Projects, Intel Galileo Board Based Development Project'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void mvaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/2 - Microsoft Virtual Academy Lab'),
          content: Text(
              ' Name of Industrial/Research partner: Microsoft Virtual Academy \n\n Nature of MOU/Support given by the industry: Microsoft Certification, Faculty and Student Training \n\n Outcome of MOU/Program: Total 85 Students and 12 Faculty certified in Microsoft Technology Associate (MTA)'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void aidcLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/3 - Apple iOS Developer Centre Lab'),
          content: Text(
              ' Name of Industrial/Research partner: Apple Inc \n\n Nature of MOU/Support given by the industry: Apple iOS Developer Framework provided for iOS app development \n\n Outcome of MOU/Program: Apple iOS App Development by Students as BE Projects'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void aaaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/1 - Amazon AWS Academy Lab'),
          content: Text(
              ' Name of Industrial/Research partner: Amazon AWS \n\n Nature of MOU/Support given by the industry: Amazon AWS Training and Certification to Faculty \n\n Outcome of MOU/Program: AWS Certification by Students and Faculty'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void ndpLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/3 - NVIDIA Developer Program Lab'),
          content: Text(
              ' Name of Industrial/Research partner: NVIDIA Developer Program \n\n Nature of MOU/Support given by the industry: NVIDIA Titan X Pascal GPU, NVIDIA Developer Program Resources \n\n Outcome of MOU/Program: Deep Learning Research'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void ibmLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - IBM Academic Alliance Lab'),
          content: Text(
              ' Name of Industrial/Research partner: IBM Academic Alliance \n\n Nature of MOU/Support given by the industry: IBM Academic Courses for Staff and Students \n\n Outcome of MOU/Program: Staff and Students Skill Upgradation'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  void pancaLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - Palo Alto Network Cybersecurity Academy Lab'),
          content: Text(
              ' Name of Industrial/Research partner: Palo Alto Network Cybersecurity Academy \n\n Nature of MOU/Support given by the industry: Palo Alto Network Cybersecurity Academy Certification Training to Staff and Students \n\n Outcome of MOU/Program: Total 2 faculty members have been trained and completed Certification. PANW has recognised Dr. V A Bharadi and Prof. A R Kazi as authorized Cybersecurity instructor'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}

