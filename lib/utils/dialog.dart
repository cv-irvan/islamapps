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

showDetailAsmaulHusna(BuildContext context, arab, latin, arti) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: Sizeconfig.screenWidth - 20,
          height: Sizeconfig.screenWidth - 20,
          decoration: BoxDecoration(
            color: putih,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: putih,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      arab,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      latin,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      arti,
                      style: GoogleFonts.poppins(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
