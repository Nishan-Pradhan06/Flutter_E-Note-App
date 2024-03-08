import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../widgets/widgets.dart';

class WebDevelopment extends StatefulWidget {
  const WebDevelopment({super.key});

  @override
  State<WebDevelopment> createState() => _WebDevelopmentState();
}

class _WebDevelopmentState extends State<WebDevelopment> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 212, 212),
          elevation: 25.0,
          centerTitle: true,
          title: const Text('Web Technology'),
        ),
        body: PageView(
          children: [
            GestureDetector(
              child: CupertinoScrollbar(
                thickness: 5.0,
                thumbVisibility: true,
                thicknessWhileDragging: 8.0,
                child: InteractiveViewer(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          TopicsHeadings(
                            unit: 'Unit 3',
                            sources: 'Sources: Buddha Publication Pvt. Ltd.',
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          ChapterTopics(
                            heading:
                                'Web technology with Server side and client side programming',
                          ),
                          HeadingDetails(
                            contents:
                                'Web technology is the tools and techniques which enables two or more computing devices to communicate over a network i.e. Internet. Web Technology consist of two words, the web refers to the World Wide Web generally known as World Wide Web. WWW is the cyber space containing webpages, documents, and any other resources which are identified and located with the help of their URLs. Technology refers to the tools and techniques that makes these resources available on the Web such as, web browsers to view content of web, Programming languages and frameworks for the development of websites, Database to store data at back end, protocols for communicating on the web, multimedia elements etc.\n\nWeb development is the process of designing and developing website which are hosted through internet or intranet. The process of developing web can range from developing static page to a complex such as web based application social media sites, E-commerce. Web development includes web design, web content development, client side scripting, server side scripting, web engineering etc. Since, web development consists of several inter-related task which can be accomplish by different types of developer who focuses on different aspect of web creation. ',
                          ),
                          Image.network(
                              "https://readersnepal.com/storage/post-images//XwZXfpgDXN4K1Wt7ro3HCQhDRAtS4vUyo9qc2gQP.jpg"),
                          const SizedBox(
                            height: 8,
                          ),
                          ChapterTopics(
                            heading: 'Server side and client side programming',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  'Client-Side Scripting programming'),
                          HeadingDetails(
                            contents:
                                'Client-side scripting is performed to generate a code that can run on the client side i.e (front end) browser without needing the server-side (back end) processing. Basically, client-side scripts are placed inside an HTML document. The client-side scripting can be used to layout the content of the web. For example, when a user makes a request through web browser for a webpage to the server, it just sent the HTML and CSS as plain text, and the browser interprets and renders the content of web in the client end (user). Client-side scripting is designed to run as a scripting language which can be executed by web browser. Front end developer is someone who design and develop client side of a website. Generally. he or she works in user interface (UI) of a website. Front end developer must be at least fluent in three different languages i.e. HTML, CSS, JavaScript whereas, there are several other libraries which can be used for front end development.',
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  'Server-Side Scripting programming'),
                          HeadingDetails(
                            contents:
                                'Server-side scripting also known as back-end runs on the server where the application is hosted. Server-side is used to serve content depending upon the user request. Back end helps to create dynamic web based application that allows user to interact and communicate with the application. Back end language also helps to connect front end with data base. So that, User can store and retrieve data as per the requirement.  Back-end developer is responsible for server-side programming. Some of the popular server-side (back-end) scripting language are ASP, JavaScript (using SSJS (Server-side JavaScript e.g. node.js), Perl, PHP, Ruby, Python etc.\n\nClient-side scripting and server-side scripting both works along side. The client-side scripting emphasizes making the interface of the web application or website (UI) more appealing and functional. Whereas, server-side scripting emphasizes on data accessing methods, error handling and fast processing etc..\n\nNote: Full-stack developer understand both Front end and back end development process. They can accomplish entire project. Full stack developer must have expertise in client site and server site Scripting language. Moreover, he/she has a great knowledge of integrating database with the application.',
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ChapterTopics(
                            heading: 'How to add JavaScript in web pages?',
                          ),
                          HeadingDetails(
                            contents:
                                'JavaScript is a client-side scripting language used for web development along with other front-end development tool such as HTML and CSS. JavaScript helps to give dynamic behavior to our web pages such as adding animation, drop down menus, client-side validation etc. More over JS can be used for mobile apps development and game development. JavaScript is known as scripting language because it does not need to be compiled before execution, it executes in run-time environment through web browser. Several libraries of JavaScript such as React JS, Vue JS, Angular JS etc can be found and used to make more interactive, intuitive and advance web pages. JS is not only used for front-end rather it can be used in server side also. Node JS is an example of server-side JavaScript generally known as SSJS.',
                          ),
                          Image.network(
                            "https://readersnepal.com/storage/post-images//Es7aWxYFUc5GFtVWMq2KV4GFl3OfCCwkjZk4vvLg.jpg",
                          ),
                          ChapterTopics(heading: 'Feature of JavaScript'),
                          HeadingDetails(
                            contents:
                                '- It is light weighted and interpreted language which execute in run-time environment directly through web browser.\n- It is supported by all the web browser since 97% of all web sites use JS.\n - It is also a structural programming language since it support control structure such as branching and looping. \n - It is prototype based programming language which means we can create object without creating classes, so it is also a Object Oriented programming3. \n -JavaScript is a case-sensitive language, small and upper case differs. \n -Every operating system such as Windows, MacOS supports JS.',
                          ),
                          ChapterTopics(heading: 'Uses of JavaScript'),
                          HeadingDetails(
                            contents:
                                '- JS is used for client-side validation.\n- JS can be used to make dynamic drop-down menus.\n- JS can be used to display date, time and even clock.\n- JS can be used to generate pop-up windows, alert message, dialog box etc\n- JS can also be used for Server application.\n- JS can be used for cross platform mobile apps development.\n- JS can be used for game development.',
                          ),
                          ChapterTopics(
                              heading: 'Adding JavaScript to HTML document'),
                          HeadingDetails(
                              contents:
                                  'As we know, JS is often used as client-side scripting language along with HTML and CSS. Like we add CSS to our HTML document, similarly we can add our JavaScript code to HTML document in three several ways. The several ways of adding JavaScript to HTML document are:'),
                          const ChapterHeadingMedium(
                              medium_heading: '1 .Inline JavaScript code'),
                          HeadingDetails(
                            contents:
                                'This is the method of adding JS code directly inside the HTML tag. We don’t have to create separate JS file or even we don’t have to place JS code with in script tag. Simple events like onclick, mouseover, keypress can easily be added through this method. But, its very much inconvenient to add large JS code inline. JavaScript code can be added in HTML document inline as follows:',
                          ),
                          Image.asset("images/unit_3/e1.png"),
                          HeadingDetails(
                              contents:
                                  'Here, we have added alert message through onclick event. When user press the Click me button then alert message will be shown in the web browser.'),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  '2. Internal (Embedding) JavaScript code'),
                          HeadingDetails(
                              contents:
                                  'This is the method of adding JS code within the HTML document. JS code is added internally with in the script tag inside body of the HTML document. JavaScript code can be embedded within HTML document as follows:'),
                          Image.asset("images/unit_3/e2.png"),
                          HeadingDetails(
                              contents:
                                  'Here, we have created a JS function named disp( ), this function is called when user press the Click me button. Once button is pressed alert message is displayed which is defined inside function within Script tag.'),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: '3. External JavaScript file'),
                          HeadingDetails(
                              contents:
                                  'This is the most popular methods of adding JS in our web pages. To add external JavaScript we have to create separate JS file which is linked with our HTML document as:'),
                          Image.asset("images/unit_3/e3.png"),
                          HeadingDetails(
                              contents:
                                  'Where, name.js is the JavaScript file that we create to write all our JS code. It should be in same location with our HTML document. It is most convenient way of adding JS in our web page as JS code don’t get messed with other HTML and CSS code. JavaScript code can be externally added with HTML document as follows:\n\nCreate a HTML document with any name'),
                          Image.asset("images/unit_3/e4.png"),
                          HeadingDetails(
                              contents:
                                  'Also create a JS file with .js extension and add following code'),
                          Image.asset("images/unit_3/e5.png"),
                          HeadingDetails(
                            contents:
                                'Here, we have created separate HTML and JS file in same location. Since, we have linked our JS file with our HTML document, every code which is written in JS file will be implemented on HTML document.',
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          ChapterTopics(
                              heading:
                                  'Local and global variable in JavaScript'),
                          HeadingDetails(
                              contents:
                                  'Variables are the identifiers which holds value during our program execution. These values may change throughout the program. Depending upon the nature of data variable can hold several type of value. The type of value stored in the variable are denoted by datatype. There are two types of datatypes used in JS.'),
                          ChapterTopics(
                              heading: 'Data types used in JavaScript'),
                          const ChapterHeadingMedium(
                              medium_heading: 'a) Primitive data type: '),
                          HeadingDetails(
                              contents:
                                  'They are inbuilt datatype used in JS.'),
                          Table(
                            border: TableBorder.all(),
                            columnWidths: const {
                              0: FixedColumnWidth(
                                  80), // Adjust the width of the first column
                            },
                            children: const [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Data Type')),
                                  ),
                                  TableCell(
                                    child: Center(child: Text('Function')),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Number')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            'It represents numeric values, including integers and floating-point numbers. BigInt can be used to represent numbers with large values.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('String')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            'It represent alphanumeric values i.e. text'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Boolean')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            'It represent either true or false value.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Null')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            ' It represent empty or unknown value.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Undefined')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            ' If variable is declared but the value is not assigned then the variable is of undefined type.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: 'b) Non-Primitive datatype:'),
                          HeadingDetails(
                              contents:
                                  'They are the derived datatypes from primitive datatype.'),
                          Table(
                            border: TableBorder.all(),
                            columnWidths: const {
                              0: FixedColumnWidth(
                                  80), // Adjust the width of the first column
                            },
                            children: const [
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Data Type')),
                                  ),
                                  TableCell(
                                    child: Center(child: Text('Function')),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Array')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            ' It store multiple values of same type under a same name.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  TableCell(
                                    child: Center(child: Text('Object ')),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: EdgeInsets.all(
                                          8.0), // Add padding to the right column
                                      child: Center(
                                        child: Text(
                                            '	 It has methods and properties.'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ChapterTopics(heading: 'Variables in JavaScript'),
                          HeadingDetails(
                              contents:
                                  ' Variables in JavaScript are declared by using keyword "var". for eg, \nvar a=3,b=4;\nvar fruit = "apple"; '),
                          ChapterTopics(
                              heading: 'Types of variable in JavaScript'),
                          const ChapterHeadingMedium(
                              medium_heading: 'a) Local variable '),
                          HeadingDetails(
                              contents:
                                  'Those variable which are declared inside the block or function is called local variable. Local variable can only be accessed and used within the block or function.'),
                          Image.asset("images/unit_3/e6.png"),
                          HeadingDetails(
                            contents:
                                "In above example, the variable 'a' is declared inside the function disp(). So, it can be used only within the function block. Other function or block cannot use the value of 'a'. Hence, to overcome this limitation we have global variable.",
                          ),
                          const ChapterHeadingMedium(
                              medium_heading: 'b) Global variable'),
                          HeadingDetails(
                            contents:
                                'Those variable which are declared outside the block or function is called global variable. Global variable can  be accessed and used within any other function or the block.',
                          ),
                          Image.asset("images/unit_3/e7.png"),
                          HeadingDetails(
                            contents:
                                "In above example, the variable 'a' is declared outside the two function disp() and cisp(). So, it can be used by both function block. When user press Click me then, disp() function is called, this function will display the value of 'a' i.e. 5 which is declared outside of the function. Similarly, when user press Push me then, cisp() function is called, this function will also display the value of 'a' i.e. 5. This is because variable ‘a’ is declared outside of function or block which can be used by any number of function or block. Note: Block represent the statement written inside curly bracket { }",
                          ),
                          ChapterTopics(
                              heading: 'form validation in javascript'),
                          HeadingDetails(
                              contents:
                                  'Once the client or user entered all the necessary data and  press the submit button then all the data entered by the client must be correct and valid. Thus, form validation is the mechanism which allows client to enter only the correct information which can be send to the server. JavaScript provides easy method for form validation at client side. Forma validation can be done in two ways: Basic validation which checks whether all the required fields are filled properly or not kept empty whereas, Data Format validation check whether the data entered into the form field are logically correct.'),
                          ChapterTopics(
                            heading: 'Basic form validation in JavaScript',
                          ),
                          Image.asset("images/unit_3/e8.png"),
                          ChapterTopics(
                              heading: 'DDL DML and DCL with example'),
                          HeadingDetails(
                              contents:
                                  'SQL stands for Structured Query Language. It is an international standard database query language introduced and developed by IBM in early 1970s. It was able to control relational database. SQL is not a complete programming language rather only used for communicating with database. SQL has several statement for data definition, data manipulation and data control generally known as DDL, DML and DCL respectively. A query is a request to a DBMS for the retrieval, modification, insertion and deletion of the data from database.'),
                          Image.asset("images/unit_3/sql.jpg"),
                          ChapterTopics(heading: 'DDL DML and DCL statements'),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  '1) Data Definition Language (DDL)'),
                          const ChapterHeadingMedium(
                              medium_heading: '1.1 CREATE statement'),
                          const ChapterHeadingMedium(
                              medium_heading:
                                  '2) Data Manipulation Language (DML)'),
                          const ChapterHeadingMedium(
                              medium_heading: '3) Data Control Language (DCL)'),
                          HeadingDetails(
                              contents:
                                  'DCL provides additional feature for security of table and database. It includes commands for controlling data and access to the database. Some of the example of this command are GRANT, COMMIT etc.'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: _isAdLoaded
            ? SizedBox(
                height: _bannerAd.size.height.toDouble(),
                width: _bannerAd.size.width.toDouble(),
                child: AdWidget(ad: _bannerAd),
              )
            : const SizedBox(),
      ),
    );
  }
}
