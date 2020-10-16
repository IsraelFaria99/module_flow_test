import 'package:flutter/material.dart';

final addressTypes = ['Casa', 'Apto', 'Hotel'];

class AddressTypeSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Address Type Selector'),
      ),
      body: Column(
        children: List.generate(
          addressTypes.length,
          (index) => ListTile(
            onTap: () {
              Navigator.of(context).pop(addressTypes[index]);
            },
            title: Text(addressTypes[index]),
          ),
        ),
      ),
    );
  }
}
