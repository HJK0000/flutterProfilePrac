import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(context, "팔로우 하시겠습니까?", "네"),
        _buildMessageButton(context, "Direct Messagae"),
      ],
    );
  }

  Widget _buildFollowButton(BuildContext context, String title, String content) {
    return InkWell(
      onTap: () {
        print("Follow 버튼 클릭됨");
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text("${title}"),
              content: Text("${content}"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('확인'),
                ),
              ],
            );
          },
        );  // 여기 괄호 수정됨
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Follow",
          style: TextStyle(color: Colors.white),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildMessageButton(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        print("Message 버튼 클릭됨");
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text("${title}"),
              content: TextField(),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('보내기'),
                ),
              ],
            );
          },
        );  // 여기 괄호 수정됨
      },
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 45,
        child: Text(
          "Message",
          style: TextStyle(color: Colors.black),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
