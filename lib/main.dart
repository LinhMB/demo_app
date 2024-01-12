import 'package:flutter/material.dart';


void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trang dang nhap',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false; // Trạng thái hiển thị mật khẩu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/anh1.jpg',
              width: 200,
              height: 100,
            ),
            const SizedBox(height: 5),
            const Text(
              'Mapping your success',
              style: TextStyle(
                fontSize: 26,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 30),
              child: TextField(
                style: TextStyle(fontSize: 15, color: Colors.cyan),
                decoration: InputDecoration(
                  labelText: "Email hoặc tên tài khoản",
                  labelStyle: TextStyle(color: Color(0xff888888), fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                style: const TextStyle(fontSize: 15, color: Colors.cyan),
                obscureText: !showPassword,
                decoration: const InputDecoration(
                  labelText: "Mật khẩu",
                  labelStyle: TextStyle(color: Color(0xff888888), fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text("Show", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: const Icon(
                      Icons.visibility,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {}, child: const Text('Đăng nhập'),),
            const SizedBox(height: 5),
            const Text('Or', style: TextStyle(fontSize: 15,),),
            const SizedBox(height: 10),
            InkWell(onTap: () {}, child: Image.asset('assets/images/gg1.jpg', width: 200, height: 40,),),
            const SizedBox(height: 15),
            InkWell(onTap: () {}, child: const Text('Bạn chưa có tài khoản? Đăng kí ngay',style: TextStyle(fontSize: 15,color: Colors.blue,),),),
            const SizedBox(height: 20),
            InkWell(onTap: () {}, child: const Text('Được cung cấp bởi Tinasoft',style: TextStyle(fontSize: 15,color: Colors.blue,decoration: TextDecoration.underline,),),),
            const SizedBox(height: 15),
            const Text('V1.5.1', style: TextStyle(fontSize: 15,),),
          ],
        ),
      ),
    );
  }
}