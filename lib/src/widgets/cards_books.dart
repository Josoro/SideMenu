import 'package:flutter/material.dart';

class CardsBodyBooks extends StatelessWidget {
  const CardsBodyBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: [
            for (int i = 1; i < 40; i++)
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(
                          tag: 1,
                          child: Image.asset(
                            'assets/book.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ))
          ],
        ));
  }
}
