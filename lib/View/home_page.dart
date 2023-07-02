import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: BottomNavigationMenu()
      ),
    );
  }
}

class BottomNavigationMenu extends StatefulWidget{
  const BottomNavigationMenu({Key? key}) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationMenu();
  }  
}

class _BottomNavigationMenu extends State<BottomNavigationMenu>{
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xCC587CD0),
              Color(0xFFFFFFFF)
            ],
          ),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 40),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/man.png'),
                        maxRadius: 30,
                      ), 
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 27),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Tên người dùng',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          Text(
                            '0 VNĐ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ), 
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Dịch vụ khách hàng',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 3,
                        padding: EdgeInsets.all(20),
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/deposit.png',
                                    height: 41,
                                    width: 41,
                                  ),
                                  const Text(
                                    'Nạp tiền',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/cash-withdrawal.png', 
                                    height: 41,
                                    width: 41,
                                  ),
                                  const Text(
                                    'Rút tiền',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ), 
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/piggy-bank.png',
                                    height: 41,
                                    width: 41,
                                  ),
                                  const Text(
                                    'Mở tiết kiệm',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'images/payroll.png',
                                    height: 61,
                                    width: 61,
                                  ),
                                  const Text(
                                    'Chuyển tiền',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                        'Câu hỏi thường gặp',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xCC587CD0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 3,
                        padding: EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Scaffold(
                                backgroundColor: Color(0xCC587CD0),
                                body: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Cách nạp tiền?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Scaffold(
                                backgroundColor: Color(0xCC587CD0),
                                body: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Cách rút tiền?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: Scaffold(
                                backgroundColor: Color(0xCC587CD0),
                                body: Container(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Cách mở sổ?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              blurRadius: 10,
            ),
          ],
        ),
        child:  BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.balance),
              label: 'Tỉ giá'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Cài đặt',
            ),
          ],
          currentIndex: _selectIndex,
          onTap: (int index){
            setState(() {
              _selectIndex = index;
            });
          },
        ), 
      ),
    );
  }
}