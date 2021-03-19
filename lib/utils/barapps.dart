part of 'importutils.dart';

class Barapps extends StatelessWidget {
  String judul;
  Barapps({this.judul});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // color: putih.withOpacity(0.1),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: putih,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: kuning.withOpacity(0.30),
                    blurRadius: 20,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            '$judul',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: hitam,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
