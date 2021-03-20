part of 'importview.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nama;

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
          child: SingleChildScrollView(
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
                  onFieldSubmitted: (value) {
                    Navigator.pop(context);
                    setState(() {
                      nama = value;
                      saveNama(value);
                    });
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    getNama().then((value) {
      if (value != null) {
        setState(() {
          nama = value;
        });
      } else {
        setState(() {
          tanyanama(context);
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Bg(),
          InkWell(
            onTap: () => rmvNama(),
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
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    nama ?? '-',
                    style: GoogleFonts.poppins(
                      color: hitam,
                      fontSize: 21,
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
                  ontap: hitDoaTahlil,
                ),
                ItemMenu(
                  t1: 'Asmaul Husna',
                  t2: 'Sifat-sifat Allah',
                  t3: '02',
                  ontap: hitAsmaulHusna,
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
                  ontap: hitAyatKursi,
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

  void hitAyatKursi() {
    print('telah menekan tombol');
    showLoading(context);
    AyatKursiBloc blocayatkursi = AyatKursiBloc();
    blocayatkursi.getAyatKursi();
    blocayatkursi.ayatkursi.listen((value) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AyatKursi(data: value)));
    });
  }

  void hitDoaTahlil() {
    print('telah di tekan');
    showLoading(context);
    DoaTahlilBloc blocdoatahlil = DoaTahlilBloc();
    blocdoatahlil.getDoaTahlil();
    blocdoatahlil.doatahlil.listen((value) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DoaTahlil(data: value)));
    });
  }

  void hitAsmaulHusna() {
    print('telah di tekan');
    showLoading(context);
    AsmaulHusmaBloc blocasmaulHusma = AsmaulHusmaBloc();
    blocasmaulHusma.getAsmaulHusna();
    blocasmaulHusma.asmaulhusna.listen((value) {
      Navigator.pop(context);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AsmaulHusna(data: value)));
    });
  }
}
