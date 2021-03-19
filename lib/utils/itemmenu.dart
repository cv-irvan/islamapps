part of 'importutils.dart';

class ItemMenu extends StatelessWidget {
  String t1;
  String t2;
  String t3;
  Function ontap;
  ItemMenu({this.t1, this.t2, this.t3, this.ontap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(left: Sizeconfig.screenWidth / 4.5),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: ontap,
              child: Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                decoration: BoxDecoration(
                    color: putih,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kuning.withOpacity(0.30),
                        blurRadius: 20,
                        offset: Offset(0, 3),
                      )
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$t1',
                      style: GoogleFonts.poppins(
                          color: hitam,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      '$t2',
                      style: GoogleFonts.poppins(
                          color: hitam,
                          fontWeight: FontWeight.w300,
                          fontSize: 13),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      height: 25,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: utama, width: 1.5)),
                      child: Center(
                        child: Text(
                          'detail',
                          style: GoogleFonts.poppins(
                            color: utama,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 50,
              height: 33,
              decoration: BoxDecoration(
                color: utama,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  '$t3',
                  style: GoogleFonts.poppins(
                    color: putih,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
