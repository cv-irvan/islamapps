part of 'importview.dart';

class DoaHarian extends StatefulWidget {
  DoaHarianModel data;
  DoaHarian({this.data});
  @override
  _DoaHarianState createState() => _DoaHarianState();
}

class _DoaHarianState extends State<DoaHarian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: ListView.builder(
                itemCount: widget.data.data.length,
                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: putih.withOpacity(0.5),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Text(
                              '${i + 1}. ${widget.data.data[i].title}',
                              style: GoogleFonts.poppins(
                                color: hitam,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: KontenKanan(
                            child: Text(
                              widget.data.data[i].arabic,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: KontenKiri(
                            child: Text(
                              'Artinya : \n${widget.data.data[i].translation}',
                              style: GoogleFonts.poppins(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Barapps(
            judul: 'Doa-doa Harian',
          ),
        ],
      ),
    );
  }
}
