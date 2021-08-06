import 'package:flutter/material.dart';

class HomeAppScreen extends StatelessWidget {
  final picture;
  final Textly;
  const HomeAppScreen(this.picture, this.Textly, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.deepPurple[600],
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Icon(Icons.earbuds),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      '$Textly',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(child: Icon(Icons.card_travel)),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                '$picture',
                scale: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                Text('0'),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
