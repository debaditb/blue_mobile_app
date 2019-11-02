//import 'package:flutter/material.dart';
//
//class PromotionList extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() => _PromotionListState();
//}
//
//class _PromotionListState extends State<PromotionList> {
//  Future<List<Message>> future;
//  List<Message> messages;
//
//  void initState() {
//    super.initState();
//    fetch();
//  }
//
//  void fetch() async {
//    future = Message.browse(status: widget.status);
//    messages = await future;
//  }
//
//  Widget build(BuildContext context) {
//    return FutureBuilder(
//      future: future,
//      builder: (BuildContext context, AsyncSnapshot snapshot) {
//        return ListView.separated(
//          itemCount: messages.length,
//          separatorBuilder: (context, index) => Divider(),
//          itemBuilder: (BuildContext context, int index) {
//            Message message = messages[index];
//          },
//        );
//      },
//    );
//  }
//}
