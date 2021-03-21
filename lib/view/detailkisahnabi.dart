part of 'importview.dart';

class DetailKisahNabi extends StatefulWidget {
  DataKisahNabi data;
  DetailKisahNabi({this.data});
  @override
  _DetailKisahNabiState createState() => _DetailKisahNabiState();
}

class _DetailKisahNabiState extends State<DetailKisahNabi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    KontenKiri(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   'Tahun kelahiran : ${widget.data.thnKelahiran}\n',
                          //   style: GoogleFonts.poppins(),
                          // ),
                          Text(
                            'Wafat pada usia : ${widget.data.usia}\n',
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            'Kisah : \n${widget.data.description}',
                            style: GoogleFonts.poppins(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Barapps(
            judul: widget.data.name,
          ),
        ],
      ),
    );
  }
}
