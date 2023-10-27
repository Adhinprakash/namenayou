
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller=WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)

 
  ..loadRequest(Uri.parse("https://namenayou.com/all-locations"));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if( await controller.canGoBack()){
   controller.goBack(); 
   return false;
        }else{
          return true;
        }
       },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          backgroundColor: Color.fromARGB(255, 17, 52, 81),
         
          
        ),
        body: SafeArea(child: WebViewWidget(controller: controller)),
      ),
    );
  }

  
}





