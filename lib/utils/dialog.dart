part of 'importutils.dart';

showLoading(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: putih,
            image: DecorationImage(
              image: AssetImage('assets/loading.gif'),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    },
  );
}
