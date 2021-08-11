import 'package:contatoss/models/contact.dart';
import 'package:contatoss/style.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final Contact _selectedcontact;

  Details(this._selectedcontact);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedcontact.isFavorite)
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
                tag: _selectedcontact.name,
                child: Image.asset(_selectedcontact.photo)),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 16,
              ),
              child: Text(
                _selectedcontact.name,
                style: TextStyle(
                  color: grayTheme,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: blueTheme,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(_selectedcontact.email,
                        style: TextStyle(
                          color: grayTheme,
                          fontSize: 10,
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
