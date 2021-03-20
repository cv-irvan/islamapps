part of 'importview.dart';

class AsmaulHusna extends StatefulWidget {
  AsmaulHusnaModel data;
  AsmaulHusna({this.data});
  @override
  _AsmaulHusnaState createState() => _AsmaulHusnaState();
}

class _AsmaulHusnaState extends State<AsmaulHusna> {
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
              itemBuilder: (BuildContext context, i) {
                return InkWell(
                  onTap: () {
                    showDetailAsmaulHusna(
                        context,
                        widget.data.data[i].arabic,
                        widget.data.data[i].latin,
                        widget.data.data[i].translationId);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.1,
                          color: Colors.white.withOpacity(0.6),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            widget.data.data[i].arabic,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${i + 1}. ${widget.data.data[i].latin}',
                            style: GoogleFonts.poppins(),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Barapps(
            judul: 'Asmaul Husna',
          ),
        ],
      ),
    );
  }
}
