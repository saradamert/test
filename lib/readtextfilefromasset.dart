import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReadTextFile extends StatefulWidget {
  const ReadTextFile({Key? key}) : super(key: key);

  @override
  State<ReadTextFile> createState() => _ReadTextFileState();
}

class _ReadTextFileState extends State<ReadTextFile> {
  String textFiel = "ไม่มีข้อมูล";
  getData() async{
    String response;
    response = await rootBundle.loadString('text_notes/my_text.txt');
    setState(() {
      textFiel = response;
    });
  }

  clear(){
    setState(() {
      textFiel = "ไม่พบข้อมูล";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(textFiel),
            ElevatedButton(onPressed: (){
              getData();
            }, child: Text('คลิกเพื่อดูข้อมูล')),
            ElevatedButton(onPressed: (){
              clear();
            }, child: Text('ล้างข้อมูล'))
          ],
        ),
      ),
    );
  }
}
