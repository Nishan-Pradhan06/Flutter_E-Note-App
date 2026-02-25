// ignore_for_file: must_be_immutable
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../components/app_bar.dart';
import '../components/footer.dart';
import '../components/headings.dart';

class ProgrammingC extends StatelessWidget {
  const ProgrammingC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Unit 4'),
      body: PageView(
        children: [
          GestureDetector(
            child: CupertinoScrollbar(
              thickness: 10.0,
              thumbVisibility: true,
              thicknessWhileDragging: 10.0,
              child: InteractiveViewer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const TopicsHeadings(unit: 'Programming in C'),
                        const SizedBox(height: 8.0),
                        ChapterTopics(heading: 'Functions:'),
                        HeadingDetails(
                          contents:
                              'Functions are the self-contained program that contains several block of statement which performs the defined task. In C language, we can create one or more functions according to the requirements.\n\nUsually, In C programs flows from top left to right bottom of main() functions. We can create any number of functions below that main() functions. These function are called from main() function. Requirement while creating a functions.\n\na) Declare a function\n\nb) Call statement\n\nc) Definition of function.\n\nAfter the function is called from the main(), the flow of control will return to the main() function.\nProgram example of function.',
                        ),
                        const ImageWidget(imagePath: 'images/unit_4/p1.png'),
                        const ImageWidget(imagePath: 'images/unit_4/p2.png'),
                        ChapterHeadingMedium(medium_heading: 'Advantages'),
                        HeadingDetails(
                          contents:
                              '1. Big programs can be divided into smaller module using functions.\n2. Program development will be faster.\n3. Program debugging will be easier and faster.\n4. Use of functions reduce program complexity.\n5. Program length can be reduced through code reusability.\n6. Use of functions enhance program readability.\n7. Several developer can work on a single project.\n8. Functions are used to create own header file i.e mero.h\n9. Functions can be independently tested.',
                        ),
                        const SizedBox(height: 6.0),
                        ChapterHeadingMedium(
                          medium_heading: 'Recursive functions: (V.Imp)',
                        ),
                        HeadingDetails(
                          contents:
                              'Those function which  calls itself is known as recursive function and the concept of using recursive functions to repeat the execution of statements as per the requirement is known as recursion. The criteria for recursive functions are:\n1. The function should call itself.\n2. There should be terminating condition so that function calling will not be for infinite number of time. \n\nProgram example of  recursive function',
                        ),
                        const ImageWidget(imagePath: 'images/unit_4/p3.png'),
                        const ImageWidget(imagePath: 'images/unit_4/p4.png'),
                        const SizedBox(height: 6.0),
                        ChapterHeadingMedium(medium_heading: 'Pointer (v-imp)'),
                        HeadingDetails(
                          contents:
                              'Pointers in C are similar to as other variables that we use to hold the data in our program but, instead of containing actual data, they contain a pointer to the address (memory location) where the data or information can be found.\n\nThese is an important and advance concept of C language since, variables names are not sufficient to provide the requirement of user while developing a complex program. However, use of pointers help to access memory address of that entities globally to any number of functions that we use in our program.\n\nImportance of Pointer.\n\n While using several numbers of functions in C program, every functions should be called and value should be passed locally. However, using pointer variable, which can access the address or memory location and points whatever the address (memory location) contains.\n\nPointer declaration\nData_type *variable_name\nEg, int *age;',
                        ),
                        ChapterHeadingMedium(medium_heading: 'Advantages'),
                        HeadingDetails(
                          contents:
                              '1. It helps us to access a variable that is not defined within a function.\n2. It helps to reduce program length and complexity i.e. faster program execution time.\n3. It is more convenient to handle datas.\n4. It helps to return one or more than one value from the functions.\nProgram example:',
                        ),
                        const ImageWidget(imagePath: 'images/unit_4/p5.png'),
                        ChapterTopics(heading: 'File Handling in C'),
                        HeadingDetails(
                          contents:
                              'As we know, while program is in execution the content of variables are temporarily stored in main memory i.e. RAM. Data reside temporarily in RAM only at the time of program execution. After the completion of execution data gets erased away which means the data cannot be used for future references. To overcome this problem, file handling comes into existence through which we can store data permanently in our secondary storage and retrieve it whenever in future. Data are stored as datafile in our disk.',
                        ),
                        Column(
                          children: [
                            Image.asset("images/unit_4/file-handling.png"),
                            const Text('Fig:- File handling in C'),
                          ],
                        ),
                        ChapterHeadingMedium(
                          medium_heading: 'Opening a data file',
                        ),
                        HeadingDetails(
                          contents:
                              'Syntax:\n\n\t\t\tFILE *fptr\n\t\t\tfptr = fopen (“filename” , ”mode”)\n\nWhere, File name can be “library.txt”, “student.dat” ..etc\nMode:\n“w” to write/store data in a data file.\n“r” to display/read/retrieve/access data from a datafile.\n“a” to add/append data in existing datafile.',
                        ),
                        ChapterHeadingMedium(
                          medium_heading: 'Store/write data',
                        ),
                        HeadingDetails(
                          contents:
                              'Syntax:\n\n\t\t\tfprintf(fptr,”format specifiers” ,variables);\n\n\t\t\tEg; suppose if we want to store name, \n\t\t\tdisease, age and bed number of a \n\t\t\tpatient then, it is written as \n\n\t\t\tfprintf(fptr , ”%s %s %d %d”, n, d, a, b);\n\n\t\t\tWhere, variable are initialized as:\n\t\t\tchar n[10], d[10];\n\t\t\tint a, b;',
                        ),
                        const SizedBox(height: 6.0),
                        HeadingDetails(
                          contents:
                              '1) Create a datafile “patient.txt” and store name, disease, age and bed number of a patient.',
                        ),
                        const ImageWidget(imagePath: 'images/unit_4/p6.png'),
                        ChapterHeadingMedium(
                          medium_heading:
                              'Read/Display/retrieve/access data from a datafile',
                        ),
                        HeadingDetails(
                          contents:
                              'Syntax:\n\n\t\t\tfscanf(fptr , ”format specifiers” ,variables);\n\n\t\t\tEg; suppose if we want to display/ \n\t\t\tread name,disease, age and bed \n\t\t\tnumber of a patient then, it is written as \n\n\t\t\tfscanf(fptr , ”%s %s %d %d”, n, d, &a, &b);\n\n\t\t\tWhere, variable are initialized as:\n\t\t\tchar n[10], d[10];\n\t\t\tint a, b;',
                        ),
                        const SizedBox(height: 6.0),
                        const Footer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imagePath;
  const ImageWidget({required this.imagePath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset(imagePath), const SizedBox(height: 3.0)],
    );
  }
}
