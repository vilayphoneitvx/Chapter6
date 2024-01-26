import 'package:flutter/material.dart';

class OrientationWidget extends StatelessWidget {
  const OrientationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Center(
          child: Text(
            'Orientation',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const OrientationLayoutIconsWidget(),
                Divider(),
                const OrientationLayoutWidget(),
                // Divider(),
                // const GridViewWidget(),
                // Divider(),
                // const OrientationBuilderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrientationLayoutIconsWidget extends StatelessWidget {
  const OrientationLayoutIconsWidget({
    Key,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Orientation _orientation =
    //     MediaQuery.of(context).orientation as Orientation;
    // return _orientation == Orientation.portrait
    return Container(
        // ? Row(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
      ],
    )
        // : Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Icon(
        //         Icons.school,
        //         size: 48.0,
        //       ),
        //       Icon(
        //         Icons.brush,
        //         size: 48.0,
        //       ),
        //     ],
        );
  }
}

class OrientationLayoutWidget extends StatelessWidget {
  const OrientationLayoutWidget({
    Key,
    key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Orientation _orientation =
    //     MediaQuery.of(context).orientation as Orientation;
    // return _orientation == Orientation.portrait
    //     ? Container(
    return Container(
      alignment: Alignment.center,
      color: Colors.yellow,
      height: 100.0,
      width: 100.0,
      child: Text('Portrait'),
    );
    // : Container(
    //     alignment: Alignment.center,
    //     color: Colors.lightGreen,
    //     height: 100.0,
    //     width: 200.0,
    //     child: Text('Landscape'),
    //   );
  }
}

// class GridViewWidget extends StatelessWidget {
//   const GridViewWidget({
//     Key,
//     key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // Orientation _orientation =
//     //     MediaQuery.of(context).orientation as Orientation;
//     // return GridView.count(
//       return Container(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       // crossAxisCount: _orientation == Orientation.portrait ? 2 : 4,
//       childAspectRatio: 5.0,
//       children: List.generate(8, (int index) {
//         return Text(
//           "Grid $index",
//           textAlign: TextAlign.center,
//         );
//       }),
//     );
//   }
// }

// class OrientationBuilderWidget extends StatelessWidget {
//   const OrientationBuilderWidget({
//     Key,
//     key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//       builder: (BuildContext context, Orientation orientation) {
//         return orientation == Orientation.portrait
//             ? Container(
//                 alignment: Alignment.center,
//                 color: Colors.yellow,
//                 height: 100.0,
//                 width: 100.0,
//                 child: Text('Portrait'),
//               )
//             : Container(
//                 alignment: Alignment.center,
//                 color: Colors.lightGreen,
//                 height: 100.0,
//                 width: 200.0,
//                 child: Text('Landscape'),
//               );
//       },
//     );
//   }
// }