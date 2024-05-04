import 'package:flutter/material.dart';

class LectureList extends StatelessWidget {
  const LectureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            const Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                "Đề luyện thi",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Center(
                child: Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/calculating.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Toán", style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/books.png", width: 70,),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Ngữ Văn", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/united-kingdom.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Tiếng anh", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/history.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Lịch Sử", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/diali.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Địa Lý", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/gdcd.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("GDCD", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/ly.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Vật Lý", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/hoa.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Hóa Học", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 120,
                      child: Card(
                        color: Color.fromARGB(255, 255, 255, 255),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/sinh.png", width: 70),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text("Sinh Học", style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
  }
}
