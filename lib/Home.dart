import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testadasoft/model/exchang.dart';
import 'package:testadasoft/service/api.dart';

import 'model/datamodel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Exchange? exchange;
  DataModel? model;
  TextEditingController amount = TextEditingController();
  TextEditingController exchangamount = TextEditingController();
  TextEditingController exchamgtype = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "กรุณากรอกข้อมูล";
                  }
                  return null;
                },
                controller: exchangamount,
                decoration: InputDecoration(
                  hintText: "สกุลเงินที่แปลง เช่น THB",
                  labelText: "สกุลเงินที่แปลง เช่น THB"
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "กรุณากรอกข้อมูล";
                  }
                  return null;
                },
                controller: exchamgtype,
                decoration: InputDecoration(hintText: "สกุลเงินที่ต้องการแปลง เช่นTHB",labelText: "สกุลเงินที่ต้องการแปลง เช่นTHB"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "กรุณากรอกข้อมูล";
                  }return null;
                },
                controller: amount,

                decoration: InputDecoration(hintText: "จำนวน",labelText: "จำนวน"),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text('ผลลัพท์ ${(exchange == null)?"":exchange!.result}',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                setState(() {
                  ApiClient.getApiExchange(exchangamount.text,exchamgtype.text,amount.text)
                      .then((value) async{
                    print(jsonEncode(value));
                    exchange = value;
                  });
                });
              },
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.green,
                child: Text('บันทึก',style: TextStyle(fontSize: 18),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
