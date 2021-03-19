part of 'importutils.dart';

class KontenKanan extends StatelessWidget {
  Widget child;
  KontenKanan({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}

class KontenKiri extends StatelessWidget {
  Widget child;
  KontenKiri({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
        color: putih,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: child,
    );
  }
}
