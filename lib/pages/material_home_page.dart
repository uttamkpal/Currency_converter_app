import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MaterialHomePage extends StatefulWidget {
  const MaterialHomePage({ super.key });
  @override
  State<MaterialHomePage> createState() => _MaterialHomePage();
}

class _MaterialHomePage extends State<MaterialHomePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const inputBorder = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueAccent,
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(5)
      ),
    );
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text("Currency Converter",
          style:TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [Icon(Icons.menu)],
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'BDT ',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    result !=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0),
                    style:  const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ]

              ),

              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                child: TextField(
                  controller: textEditingController,
                  keyboardType:  const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    hintText: "Please inter the amount in USD",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                    prefixIcon: Icon(Icons.attach_money),
                    prefixIconColor: Colors.blue,
                    filled: true,
                    fillColor: Colors.white70,
                    focusedBorder: inputBorder,
                    enabledBorder: inputBorder,
                  ),
                  style: const TextStyle(
                    color: Colors.black87,
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {

                      if(kDebugMode){
                        debugPrint(result.toString());
                      }
                      setState(() {
                        result = double.parse(textEditingController.text)*109.432;
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    // style: ButtonStyle(
                    //   backgroundColor: const MaterialStatePropertyAll(Colors.black87),
                    //   foregroundColor: const MaterialStatePropertyAll(Colors.white),
                    //   minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
                    //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(5),
                    //     ),
                    //   ),
                    // ),
                    child: const Text('Convert')),
              ),
            ],
          ),
      )
    );
  }
}
