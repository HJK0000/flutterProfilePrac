import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }
  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }
  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "김호정",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "프로그래머/백엔드",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // 패딩을 0으로 설정하여 완전히 왼쪽에 붙임
            alignment: Alignment.centerLeft, // 텍스트를 왼쪽에 정렬
          ),
          onPressed: () async {
            final Uri url = Uri.parse('https://github.com/wodud6967/filmtalk');
            if (await canLaunchUrl(url)) {
              await launchUrl(
                url,
                mode: LaunchMode.externalApplication, // 브라우저에서 링크를 엽니다
              );
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text("https://github.com/filmtalk"),
        ),
      ],
    );
  }
}