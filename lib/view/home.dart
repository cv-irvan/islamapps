part of 'importview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  tanyanama(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: putih,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Assalamu’alaikum.',
                style: GoogleFonts.poppins(
                    color: hitam, fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Text(
                'Saya Islami Apps, Boleh tau saya akan memanggilmu siapa?',
                style: GoogleFonts.poppins(
                    color: hitam, fontWeight: FontWeight.w300, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Masukkan Nama',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: utama,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: utama,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                  style: ElevatedButton.styleFrom(
                    primary: utama,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    textStyle: GoogleFonts.poppins(
                        color: putih,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          InkWell(
            onTap: () => tanyanama(context),
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: 130,
              width: Sizeconfig.screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Assalamu’alaikum,',
                    style: GoogleFonts.poppins(
                      color: hitam,
                      fontSize: Sizeconfig.lebarLayar * 6,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Fulan Wulandari',
                    style: GoogleFonts.poppins(
                      color: hitam,
                      fontSize: Sizeconfig.lebarLayar * 6,
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
            child: ListView(
              children: [
                ItemMenu(
                  t1: 'Doa-doa Tahlil',
                  t2: 'Versi Lengkap',
                  t3: '01',
                ),
                ItemMenu(
                  t1: 'Asmaul Husna',
                  t2: 'Sifat-sifat Allah',
                  t3: '02',
                ),
                ItemMenu(
                  t1: 'Doa-doa Harian',
                  t2: 'Beserta terjemahan',
                  t3: '03',
                ),
                ItemMenu(
                  t1: 'Ayat Kursi',
                  t2: 'Beserta Tafsir',
                  t3: '04',
                ),
                ItemMenu(
                  t1: 'Kisah Nabi',
                  t2: 'Kisah 25 Nabi',
                  t3: '05',
                ),
                ItemMenu(
                  t1: 'Niat Sholat',
                  t2: 'Niat Sholat 5 Waktu',
                  t3: '06',
                ),
                ItemMenu(
                  t1: 'Bacaan Sholat',
                  t2: 'Bacaan-bacaan Sholat',
                  t3: '07',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}