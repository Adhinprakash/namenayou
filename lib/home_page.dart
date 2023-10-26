
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

  // ..setNavigationDelegate(NavigationDelegate(onNavigationRequest: (NavigationRequest request) {
  //    if (request.url.startsWith('https://namenayou.com/all-locations')) {
  //         return NavigationDecision.navigate;
  //       } else {
  //         return NavigationDecision.prevent;
  //       }
  // },))
  ..loadRequest(Uri.parse("https://namenayou.com/all-locations"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Color.fromARGB(255, 17, 52, 81),
        title:IconButton(onPressed: ()async{
            if(await controller.canGoBack()){
              controller.goBack();
            }
          }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
        
      ),
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }

  
}


