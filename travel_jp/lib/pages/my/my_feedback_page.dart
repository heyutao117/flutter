import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HYMyFeedbackPage extends StatefulWidget {
  const HYMyFeedbackPage({Key? key}) : super(key: key);
  static const routerName = "/my/feedback";

  @override
  State<HYMyFeedbackPage> createState() => _HYMyFeedbackPageState();
}

class _HYMyFeedbackPageState extends State<HYMyFeedbackPage> {
  late TextEditingController _control1;
  late TextEditingController _control2;
  @override
  void initState() {
    super.initState();
    _control1 = TextEditingController();
    _control1.addListener(() { });

    _control2 = TextEditingController();
    _control2.addListener(() { });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("意见反馈"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: (){
                if(_control1.text.isEmpty){
                  Fluttertoast.showToast(msg: "请输入您要反馈的类容");
                }else{
                  _control1.text = "";
                  _control2.text="";
                  Fluttertoast.showToast(msg: "您反馈内容已收到，谢谢您的反馈");
                }
              },
              child: const Text("提交",style: TextStyle(color: Colors.white,fontSize: 20),)
          ),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              TextField(
                controller: _control1,
                maxLines: 5,
                decoration: const InputDecoration(
                  hintText: "请输入您的反馈内容",
                  border:OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 50,),
              TextField(
                controller: _control2,
                maxLines: 1,
                decoration: const InputDecoration(
                  hintText: "(选填)请输入您的联系方式",
                    border:OutlineInputBorder()
                ),

              ),
            ],
        ),
      ),
    );
  }
}
