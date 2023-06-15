import 'package:SVM_V2/View/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  Color hexToColor(String code) => new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF3F3F3),
        image: DecorationImage(
          image: AssetImage('images/background_login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children:<Widget> [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0, top: 122.0),
                      child: Image.asset(
                        'images/logo.png',
                        height: 87,
                        width: 87,
                      ),
                    ),
                    const Text(
                      'SỔ TIẾT KIỆM',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2050C0),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 46.0, bottom: 14.0),
                      child: SizedBox(
                        width: 228,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tên người dùng',
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 14),
                      child: SizedBox(
                        width: 228,
                        height: 40,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Mật khẩu',
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 79.0, bottom: 14),
                        child: GestureDetector(
                          onTap: (){},
                          child: const Text(
                            'Quên mật khẩu?',
                            style: TextStyle(
                              color: Color(0xFF587CD0),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 41,
                      width: 179,
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1E70C3),
                        ),
                        child: const Text(
                          'ĐĂNG NHẬP',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
            ),
            Padding(
              padding: EdgeInsets.only(top: 540, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Divider(
                      indent: 82.3,
                      endIndent: 10,
                      thickness: 2,
                      color: Color(0xFF707070),
                    ),
                  ),
                  Text(
                    'Đăng nhập bằng',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0x80000000),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 10,
                      endIndent: 82.3,
                      thickness: 2,
                      color: Color(0xFF707070),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Padding(
                  padding: EdgeInsets.only(top: 560),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.black38), 
                    ),
                    child: Image.asset(
                      'images/google.png',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 560),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.black38),
                    ),
                    child: Image.asset(
                      'images/mail.png',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 560),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: Colors.black38),
                    ),
                    child: Image.asset(
                      'images/telephone.png',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 700),
                    child: GestureDetector(
                      onTap: (){
                        showModalBottomSheet<void>(
                          context: context, 
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(25),
                            ),
                            side: BorderSide(
                              color: Colors.black38,
                              width: 2.0,
                            ),
                          ),
                          builder: (BuildContext context){
                            return RegisterPage();
                          }
                        );
                      },
                      child: const Text(
                        'Chưa có tài khoản ?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF587CD0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ), 
      ),
    );
  }
}