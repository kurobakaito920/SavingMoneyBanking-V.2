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
                flex: 4,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GridView.count(
                        primary: false,
                        crossAxisCount: 3,
                        padding: EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/deposit.png',
                                  height: 51,
                                  width: 51,
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
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'images/cash-withdrawal.png', 
                                  height: 51,
                                  width: 51,
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
                        ],
                      ),
                    )
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
          }
        ), 
      ),
    );
  }
}