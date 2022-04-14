import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String text = "Form Feild";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                children: [
                  TextFormFeild(text: text),
                  TextFormFeild(text: text),
                ],
              ),
            ),
            Expanded(
                child: Column(
              children: [
                TextFormFeild(text: text),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                const SubmitButton(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.062,
        width: MediaQuery.of(context).size.width * 0.3,
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.grey.shade400),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Submit Now",
              style: TextStyle(fontSize: 20, color: Colors.black45),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormFeild extends StatelessWidget {
  const TextFormFeild({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          filled: true,
          fillColor: Colors.grey.shade400,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
