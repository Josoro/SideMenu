import 'package:flutter/material.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 250,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Buscar'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}
