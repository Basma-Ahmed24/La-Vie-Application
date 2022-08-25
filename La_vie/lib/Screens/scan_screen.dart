import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScanScreen extends StatefulWidget{
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String result ='Waiting qr scan which is in your plant';
  Future _scanQR()async{
    try{
      String qrResult = (await BarcodeScanner.scan()) as String;
      setState(() {
        result=qrResult;
      });
    }on PlatformException catch(ex){
      if(ex.code==BarcodeScanner.cameraAccessDenied){
        setState(() {
          result='Camera Permission denied';
        });
      }else{
        setState(() {
          result='Unknown error $ex';
        });
      }
    }on FormatException{
      setState(() {
        result='You pressed the back button before scanning anything';
      });
    }catch(e){
      setState(() {
        result="Unkoen error $e";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const SizedBox(width: 300,height: 300,child: Image(image: AssetImage("assets/qr_code_PNG25.png"),),)
              ,Text(result,style: const TextStyle(fontSize: 30,color: Colors.green),textAlign: TextAlign.center,),
              const SizedBox(height: 20,),ElevatedButton(
                onPressed: () {
_scanQR();
                },
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(
                      400, 46.24)),
                  backgroundColor: MaterialStateProperty.all(
                      Colors.green),),
                child: Row(children: const [
                  SizedBox(
                    width: 120,
                  ),
                  Text("Scan Qr Code",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ))
                ]),

              ),
            ],
          ),
        ),
    );
  }
}
