import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () => Navigator.pop(context),
            ),
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24.0),
              bottomRight: Radius.circular(24.0),
            )),
          ),
        ],
      ),
    );
  }
}
