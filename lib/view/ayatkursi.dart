part of 'importview.dart';

class AyatKursi extends StatefulWidget {
  AyatKursiModel data;
  AyatKursi({this.data});
  @override
  _AyatKursiState createState() => _AyatKursiState();
}

class _AyatKursiState extends State<AyatKursi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          Container(
            margin: EdgeInsets.only(
              top: 100,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                KontenKanan(
                  child: Text(
                    widget.data.data.arabic,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                KontenKiri(
                  child: Text(
                    '"' + widget.data.data.latin + '"',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                KontenKiri(
                  child: Text(
                    'Artinya : \n \n"' + widget.data.data.translation + '"',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                KontenKiri(
                  child: Text(
                    'Tafsir : \n \n' + widget.data.data.tafsir,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Barapps(
            judul: 'Ayat Kursi',
          )
        ],
      ),
    );
  }
}
