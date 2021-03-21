part of 'importview.dart';

class KisahNabi extends StatefulWidget {
  KisahNabiModel data;
  KisahNabi({this.data});
  @override
  _KisahNabiState createState() => _KisahNabiState();
}

class _KisahNabiState extends State<KisahNabi> {
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
              itemBuilder: (BuildContext context, int i) {
                return InkWell(
                  onTap: () => lihatDetailKisahNabi(widget.data.data[i]),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0.1,
                          color: Colors.white.withOpacity(0.6),
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.freepik.com/free-vector/404-error-page-found_41910-364.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.data.data[i].name,
                          style: GoogleFonts.poppins(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Barapps(
            judul: 'Kisah Nabi',
          ),
        ],
      ),
    );
  }

  void lihatDetailKisahNabi(value) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailKisahNabi(data: value)));
  }
}
