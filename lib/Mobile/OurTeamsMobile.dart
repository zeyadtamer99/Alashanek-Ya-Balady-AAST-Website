import 'package:ayb_database/Widgets/BottomPartMobile.dart';
import 'package:flutter/material.dart';

import '../Widgets/Teams/TeamCardMobile.dart';

class OurTeamsMobile extends StatefulWidget {
  const OurTeamsMobile({Key? key}) : super(key: key);

  @override
  State<OurTeamsMobile> createState() => _OurTeamsMobileState();
}

class _OurTeamsMobileState extends State<OurTeamsMobile> {
  final String prDesc="The Public Relations team plays a crucial role in maintaining the reputation of AYB and ensuring that our events are successful. They are responsible for creating and executing strategies that help promote the mission and values of our organization to the college community. This team works tirelessly to build relationships with various stakeholders, including students, faculty members, and local businesses. They are also in charge of organizing events and activities that promote awareness of our cause and engage the student body in our efforts. Without the hard work and dedication of the Public Relations team, our organization would not be able to achieve its goals or make a meaningful impact in the community.";
  final String charityDesc="The charity team in our student activity plays a vital role in helping those who are in need. They organize events and activities that aim to raise funds to support various charitable causes, including providing medical assistance to those who cannot afford it and helping those who have debts that they cannot repay,and much more. The team is dedicated to making a difference in the lives of others by extending a helping hand and making sure that everyone receives the support they need. Their work is truly inspiring and demonstrates the true meaning of charity and generosity.";
  final String rdDesc="The R&D (Research and Development) team plays a vital role in our charitable activities. This team is responsible for collecting and verifying the data of people who are in need, ensuring that our aid efforts are directed to those who need it the most. Moreover, they work to develop new strategies and approaches to improve the efficiency and effectiveness of our charity work. They collaborate with other teams to identify areas where we can make a greater impact and come up with innovative solutions to address the challenges faced by the community. The R&D team's dedication and commitment to constantly improving our charity work have enabled us to reach more people in need and make a positive difference in their lives.";
  final String ydpDesc="The YDP (Youth Development Program) team is dedicated to making a positive change in the lives of children from families in need. They believe that education is the key to a better future, and their focus is not only on teaching academic subjects but also on molding the behavior of these young children. By emphasizing the importance of discipline, respect, and responsibility, they hope to create a new generation of responsible and productive citizens who will go on to make a positive impact in their communities. The YDP team is committed to providing a supportive environment that encourages growth, development, and personal achievement for all the children they work with.";
  final String hrDesc="The HR team is an integral part of our organization as they are responsible for ensuring that all members adhere to our core values and rules. They oversee the recruitment process, ensuring that only the best candidates who share our values are brought on board. They also provide training and support to members to help them grow and develop their skills, while ensuring that they stay motivated and engaged. Additionally, the HR team is responsible for managing any conflicts that may arise between members and taking appropriate action to resolve them. Their contribution to our organization is invaluable, as they help to create a positive work environment where everyone feels valued and supported.";
  final String marketDesc="The Marketing & Media team plays a vital role in spreading awareness about our charitable efforts and creating a positive impact in our community. They use their creative skills to develop strategies that help us reach a wider audience, communicate our message effectively, and inspire people to take action. By collaborating with other teams, they help us maximize our impact and achieve our goals. They are dedicated to using their expertise to promote the spirit of charity and encourage people to contribute to the betterment of our society.";



  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: SingleChildScrollView(child: Column(
        children: [
          Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Our Teams",
                      style: TextStyle(color: Colors.black, fontSize: (screenWidth/screenHeight)*70),
                    ),
                    SizedBox(
                      height: screenHeight*0.005,
                    ),
                    Container(
                      width: screenWidth * 0.25,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: screenHeight*0.05,),
          TeamCardMobile(title: 'Charity', description: charityDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/charity.jpg',),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenHeight*0.1),
            width: screenWidth*0.8,
            child: Divider(
              color: Colors.grey,
              height: 2.0,
            ),
          ),
          TeamCardMobile(title: 'Research & Development', description: rdDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/events_pics/R&D.jpg',),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenHeight*0.1),
            width: screenWidth*0.8,
            child: Divider(
              color: Colors.grey,
              height: 2.0,
            ),
          ),
          TeamCardMobile(title: 'Youth Development Program', description: ydpDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/YDP.jpg',),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenHeight*0.1),
            width: screenWidth*0.8,
            child: Divider(
              color: Colors.grey,
              height: 2.0,
            ),
          ),
          TeamCardMobile(title: 'Public Relation', description: prDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/PR.png',),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenHeight*0.1),
            width: screenWidth*0.8,
            child: Divider(
              color: Colors.grey,
              height: 2.0,
            ),
          ),
          TeamCardMobile(title: 'Human Resources', description: hrDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/hr.png',),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenHeight*0.1),
            width: screenWidth*0.8,
            child: Divider(
              color: Colors.grey,
              height: 2.0,
            ),
          ),
          TeamCardMobile(title: 'Marketing & Media', description: marketDesc, screenWidth: screenWidth, screenHeight: screenHeight, teamImage: 'assets/images/MM.jpg',),
          SizedBox(height: screenHeight*0.2,),
          BottomPartMobile(screenHeight: screenHeight,)
        ],
      )),
    );
  }
}
