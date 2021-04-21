import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: IdCard(),

));

class IdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Heaven\'s Light is Our Guide'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/RonokCV.jpg'),
                radius:80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),

            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Md. Shahariar Hassan Ronok',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'ID Number:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1710046',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Blood Group',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'O+',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mobile:',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '+8801634374596',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Icons.attach_email_outlined,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  '346ronokarya@gmail.com',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Department of Electrical & Computer Engineering',
              style: TextStyle(
                  color: Colors.grey[200],
                  letterSpacing: 2.0,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Rajshshi University of Engineering and Technology',
              style: TextStyle(
                  color: Colors.grey[200],
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

