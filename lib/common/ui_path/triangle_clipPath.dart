import 'package:flutter/cupertino.dart';

class Triangle1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height / 6), // northwest 1
      Offset(size.width, size.height / 6), //northeast 2
      Offset(size.width, size.height / 1.02), //southeast 3
      Offset(size.width / 2, size.height), //south 4
      Offset(0, size.height / 1.02), // southwest 5
    ], true); //reverse polygon white
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Triangle2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(0, size.height * 1 / 6), // 1
      Offset(size.width, size.height * 1 / 6), // 2
      Offset(size.width, size.height / 1.40), // 3
      Offset(size.width * 0.8, size.height / 1.39), // 4
      Offset(size.width * 0.8, size.height), // 5
      Offset(size.width * 0.2, size.height), // 6
      Offset(size.width * 0.2, size.height / 1.39), // 7
      Offset(0, size.height / 1.40), // 8
    ], true); //reverse polygon yellow
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Triangle3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width, 0),
      Offset(size.width, 20),
      Offset(size.width * 0.65, size.height * 0.5),
      Offset(size.width * 0.65, size.height),
      Offset(size.width * 0.35, size.height),
      Offset(size.width * 0.35, size.height * 0.5),
      const Offset(0, 20),
      const Offset(0, 0),
    ], true); //reverse polygon white
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Triangle31 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width, 0),
      Offset(size.width, 10),
      Offset(size.width * 0.65, size.height * 0.4),
      Offset(size.width / 2, size.height * 0.4),
      Offset(size.width * 0.35, size.height * 0.4),
      const Offset(0, 10),
      const Offset(0, 0),
    ], true); //reverse polygon white
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Triangle4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon([
      Offset(size.width, 0),
      Offset(size.width * 0.35, 0),
      Offset(size.width / 2, size.height),
      const Offset(0, 0),
    ], true); //reverse polygon yellow
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
