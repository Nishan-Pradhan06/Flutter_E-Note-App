// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:computer_12/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DataBase extends StatefulWidget {
  const DataBase({super.key});

  @override
  State<DataBase> createState() => _DataBaseState();
}

class _DataBaseState extends State<DataBase> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  //advertisment
  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {},
      ),
      request: const AdRequest(),
    );
    _bannerAd.load();
  }

  ///content.............
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 25.0,
          backgroundColor: const Color(0xff618989),
          centerTitle: true,
          title: const Text(
            'Unit 1',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: CupertinoScrollbar(
            thickness: 10.0,
            thumbVisibility: true,
            thicknessWhileDragging: 10.0,
            child: InteractiveViewer(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      chapterHeading(),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ChapterTopics(
                        heading: 'Data',
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      HeadingDetails(
                        contents:
                            "Data is raw fact or figure or entity. When activities in the organization take place, the effect of these activities need to be recorded which is known as data. Thus, the quantities, symbols, or characters on which operations are performed by a computer, which may be stored and transmitted in the form of electromagnetic or electrical signals and recorded on storage devices such as magnetic, optical, or mechanical recording media.",
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const SelectableText(
                        'Eg. Chanakya, 32, 601 → Raw facts',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          // fontWeight: FontWeight.normal,
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: "Information"),
                      const SizedBox(
                        height: 5.0,
                      ),
                      HeadingDetails(
                          contents:
                              "Processed data is called information. The purpose of data processing is to generate the information required for carrying out the business activities. In other words, information is knowledge that derived from data, which have been transformed, interpreted, stored and used for some purposes. With that information we can find out what we don't know before and it will affect what we already know."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "Besides, we can make a right decision. Decisions are impossible without information andusers are constantly seeking more and better information to support decision making. It also can reduce the sense of doubt and a sense of uncertainty about the event. For example, accounting information is very important for a company to be able to determine the profit or loss of the business"),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        'Eg',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Image.asset("images/eg1.jpg", height: 120),
                      const SizedBox(
                        height: 17.0,
                      ),
                      ChapterTopics(heading: 'Database'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              'A database is a collection if interralated data of objects or entities stored in tabular form. Database gives very useful information for an organiation during data manipulation and decision making.It is actually a single organized collection of structured data. The data in the database are always common to all the users of the system. A very simple example of database is telephone diary. Thus database is a collection of related data. For example:- phone diary, Result Sheet, Price list, customer record etc.'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Functions of Database'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "i. Storing, manipulating and managing information.\nii. Reducing repeated storage of data\niii. Keeping latest and correct information.\niii. Keeping latest and correct information.\niv. Providing data security.\nv. Improving disk optimization.\nvi. Fast accessing of data"),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Database Management System'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              'DBMS is a collection of program that enables user to create and maintain a database. The collection of data is usually database which contains the informatin about any particular organization and set of programs is special type language to manage more database.  DBMS is a general purpose software system that facilities the process of defining, constructing and manipulating database for various application. A DBMS handles user request for database actions and allows for control of security and data integrity requirement. DBASE, MS Access, SQL, Oracle etc are some software package to work with DBMS.\nFor Example:- Foxpro,Dbase, Sybase, ms Access, mySQL, msSQLserver etc.'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Objectives of DBMS'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "1. Providing very easy access to data for user. \n2. Providing very fast response to user request for any data. \n3. Removing any duplicate data. \n4. To provide huge space for storage of relevant data. \n5. To facilitate more than one user to use same data at a same time. \n6. To give protection to the data against unwanted access, unauthorized access and any Nepal kind of physical harm. "),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Advantages of DBMS'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const ChapterHeadingMedium(
                        medium_heading: '1.Sharing Data',
                      ),
                      const SelectableText(
                        "Data stored in a database can be stored. It refers to the capacity that makes data simultaneously accessible by many user without any interferences.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        '2.Reduce data and redudancy',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      HeadingDetails(
                          contents:
                              "The same data may be duplicated at many times or places is called data redudancy. DBMS reduce such types of duplication of data from database."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        '3.Data backup and recovery',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SelectableText(
                        "DBMS provides backup facilities to store data for future use. If any files or data lost in any computer, it is possible to restore them from database server.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        '4.Inconsitency avoided',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      HeadingDetails(
                          contents:
                              "When the same data is duplicated and change are made at one side, and not on other side, it cause data inconsistency. DBMS avoided such types of data inconsistency."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        '5.Data integrity',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      HeadingDetails(
                          contents:
                              "Data integrity means data according, consistency and upto date. A DBMS should provide capabilites for defining and enforcing constraints for data integrity."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const Text(
                        '6.Data Security',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '7.Data independence',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '8.Multiple Complex Query',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(
                          heading: 'Difference Between Database and DBMS'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/data_dbms.jpg'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Models of Database'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "There are different forms of database management system, each characterized by the way where data are defined and structured called database model. It is organizing principles of records in secondary storage.\nDifferent Models of database are given below:-"),
                      const SizedBox(
                        height: 6.0,
                      ),
                      ChapterTopics(heading: '1. Hierarchical Database Model'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "It is a database model in which records are grouped in such a way that their relationships form a branching, tree like structure. In very simple language this types of database model orgranizes data in top down structures that resembles tree. It is the easiest model. It has one or more attributes. If parent is known then searching is easy and fast."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/eg.3.png'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Fig:- Hierarchical Database Model',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          // decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Advantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1. It is most simplest and easiest database model.\n2. If parent is known then searching is easy and fast.\n3. Database security is said to be good because we can't modify, delete a child without consulting its parent.\n4. It is efficient to handle 1 to many relationship.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      ChapterTopics(heading: 'Disavantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1. This model nowadays has become an outdated model.\n2. This model cannot handle many to many relationship.\n3. When parent mode is deleted, child are automatically deleted.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: '2. Network Database Model'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "It is a database model in which records are grouped in such a way that their relationships form a branching, tree like structure. In very simple language this types of database model orgranizes data in top down structures that resembles tree. It is the easiest model. It has one or more attributes. If parent is known then searching is easy and fast."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/eg4.png'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Fig:- Network Database Model',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          // decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Advantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1. It is able to handle many to many relationship.\n2. Searching is generally fast due to the presence of multidirectional pointer.\n3. Data redundancy is reduced because same data is not needed again and again.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      ChapterTopics(heading: 'Disadvantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1.It is too complex, because database administrator, programmer must be familiar with internal structure in order to access the database.\n2. There is need of long programs to handle relationship.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      ChapterTopics(heading: '3. Relational Database Model'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "In relational database model, the data is organized into tables which contain multiple rows and columns. These tables are called relation. A  row in a table represents a relationship among a set of values. Since a table is a collection of such relationships, it generally reterred to the mathematical term relation, form which the relational database model derives its name. It is also known as RDBMS. Database processing is faster that other model. There is very less redundancy."),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/eg5.png'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/eg6.png'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        'Fig:- Network Database Model',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Advantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1. There are few redundancy in this database model.\n2. Normalization of database is possible.\n3. The database processing is also very fast.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      ChapterTopics(heading: 'Disadvantages'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "1. It is the most complex database model.\n2. Here are too many rules which makes this database model non-user friendly.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Normalization'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              " Normalization is a database design process in which complex database table table is broken down into simple seprate tables to make data model more flexible and easier to maintains. It makes data model more flexible and easier to maintain. There are two goals of the normalization process: eliminating redundant data and ensuring data dependencies make sense.\n\nThere are three types of Normalization:-\n\n1.First Normal Form(1NF)\n2.Second Normal Form(2NF)\n3.Third Normal Form(3NF)"),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: '1. First Normal Form(1NF)'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "Second Normal Form (2NF) futher address the concept of removing duplicate data: \n",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.1),
                        child: BulletedList(
                          listItems: [
                            'Table or relation must be in 1st Normal Form.',
                            'All the non-prime attributes should be fully functionally dependent on primary key.',
                            // TextStyle(color: Colors.black)
                          ],
                          bulletColor: Colors.black,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: '2. Second Normal Form(2NF)'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      const SelectableText(
                        "Second Normal Form (2NF) futher address the concept of removing duplicate data: \n",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 17.0,
                          // color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.1),
                        child: BulletedList(
                          listItems: [
                            'Table or relation must be in 1st Normal Form.',
                            'All the non-prime attributes should be fully functionally dependent on primary key.',
                          ],
                          bulletColor: Colors.black,
                          style: TextStyle(fontSize: 17.0, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: '3. Third Normal Form(3NF)'),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.1),
                        child: BulletedList(
                          listItems: [
                            'Relation must be in Second Normal Form.',
                            'For any non-trival function dependency, x-->A, then either x is a prime number or X is a super key.',
                          ],
                          bulletColor: Colors.black,
                          style: TextStyle(fontSize: 17.0, color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(
                          heading:
                              'Difference Between Centralized database and Distribution Database'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Image.asset('images/unit_1/eg222.jpg'),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Data Base Administrator(DBA)'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "Data base administrator is the person who manages the data base. The DBA determine the content, internal structure and access strategy for a data base, defines security and integrity and monitors performance.\n\nA DBA has to possess the following:-\n\ni. Knowledge of query language(SQL).\nii. Knowledge of various operating system on which data base server can run and is running.\niii. Knowledge in designing the data base.\niv. Knowledge about network architecture."),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Resposibility of Data Base(DBA)'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "There are following responsibility of a database administrator:-\n\ni. DBA should give idea to an organization on deciding which department will be looking on maintenance and update of data in the database.\nii. DBA has to assure 24 hour access to each department in the organization that needs the data.\niii. DBA has to install and timely upgrade the data base server.\niv. DBA has to use storage space available for data in an effective manner.\nv. DBA has to make proper backup and also to develop recovery procedure in case the DBMS crashes/malfunctions.\nvi. DBA also has to make sure that database server is giving optimum performance.\nvii. DBA has to work with the developers and need to assist in designing the overall data base.\nviii. DBA has to manage all the user who use data base and determine proper security level for each user."),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'SQL'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "Data base administrator is the person who manages the data base. The DBA determine the content, internal structure and access strategy for a data base, defines security and integrity and monitors performance.\n\nA DBA has to possess the following:-\n\ni. Knowledge of query language(SQL).\nii. Knowledge of various operating system on which data base server can run and is running.\niii. Knowledge in designing the data base.\niv. Knowledge about network architecture."),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ChapterTopics(heading: 'Resposibility of Data Base(DBA)'),
                      const SizedBox(
                        height: 6.0,
                      ),
                      HeadingDetails(
                          contents:
                              "There are following responsibility of a database administrator:-\n\ni. DBA should give idea to an organization on deciding which department will be looking on maintenance and update of data in the database.\nii. DBA has to assure 24 hour access to each department in the organization that needs the data.\niii. DBA has to install and timely upgrade the data base server.\niv. DBA has to use storage space available for data in an effective manner.\nv. DBA has to make proper backup and also to develop recovery procedure in case the DBMS crashes/malfunctions.\nvi. DBA also has to make sure that database server is giving optimum performance.\nvii. DBA has to work with the developers and need to assist in designing the overall data base.\nviii. DBA has to manage all the user who use data base and determine proper security level for each user."),
                      const EndingText(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _isAdLoaded
            // ignore: sized_box_for_whitespace
            ? Container(
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : const SizedBox(),
      ),
    );
  }
}
