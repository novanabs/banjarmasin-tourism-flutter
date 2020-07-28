import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:banjarmasin_tourism/constant.dart';

class PlaceScreen extends StatefulWidget {
  static String id = "place_screen";

  @override
  State<PlaceScreen> createState() => PlaceScreenState();
}

class PlaceScreenState extends State<PlaceScreen> {
  var screenSize = MediaQueryData.fromWindow(window).size;

  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism Place'),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          _googleMaps(context),
          _zoomFunction(Alignment.topRight, FontAwesomeIcons.searchMinus, true),
          _zoomFunction(Alignment.topLeft, FontAwesomeIcons.searchPlus, false),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://3.bp.blogspot.com/-cINzt3ltiMM/W967zViHeDI/AAAAAAAAAKM/RlPj5d70Bog25UQwwD2M1gXPI-2AObiPwCLcBGAs/s1600/IMG20181104093556.jpg',
                  -3.319467,
                  114.593346,
                  'Pasar Terapung Siring'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://4.bp.blogspot.com/-ugjFBq5s7pA/VoLAO_W4lsI/AAAAAAAAVAk/2vzccUXW8AY/s1600/pasar%2Bterapung%2Bsungai%2Bkuin%2B-%2Brigaahwordpresscom.jpg',
                  -3.278702,
                  114.566944,
                  'Pasar Terapung Muara Kuin'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://pesona.travel/media/menapaki-jejak-sejarah-perjuangan-rakyat-banjar-di-museum-wasaka_170447_1140.jpg',
                  -3.3039,
                  114.6091,
                  'Museum Wasaka'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://travelspromo.com/wp-content/uploads/2018/11/perosotan-air-waterboom-banua-anyar-640x360.jpg',
                  -3.308358,
                  114.619254,
                  'Waterboom Banua Anyar'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'http://cdn2.tstatic.net/banjarmasin/foto/bank/images/dan-malam-hari-pasca-pergantian-tahun-2019-lalu.jpg',
                  -3.322084,
                  114.587207,
                  'Taman Kamboja'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://redkal.com/wp-content/uploads/2019/03/images.jpeg',
                  -3.298254,
                  114.589875,
                  'Taman Budaya Kal-Sel'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://gontornews.com/wp-content/uploads/2018/06/Masjid-Sultan-Suriansyah.jpg',
                  -3.294250,
                  114.576069,
                  'Mesjid Sultan Suriansyah'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://apahabar.com/wp-content/uploads/2018/12/masjid-raya...jpg',
                  -3.319082,
                  114.591277,
                  'Mesjid Raya Sabilal Muhtadin'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://banjarmasintourism.com/wp-content/uploads/2017/06/nurimoto-4484-2-2.jpg',
                  -3.320787,
                  114.594272,
                  'Kelenteng Soetji Nurani'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://i2.wp.com/www.wisatabanjarmasin.com/wp-content/uploads/2016/01/Menara-Pantau-Siring.jpg?fit=730%2C487',
                  -3.316997,
                  114.593136,
                  'Menara Pandang'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://cdn2.tstatic.net/banjarmasin/foto/bank/images/patung-bekantan_20160914_231953.jpg',
                  -3.321783,
                  114.594443,
                  'Taman Maskot Banjarmasin'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://banjarmasintourism.com/wp-content/uploads/2017/05/nurimoto-3-2.jpg',
                  -3.311679,
                  114.594277,
                  'Kampung Sasirangan'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://situsbudaya.id/wp-content/uploads/2018/03/Banjarmasin-Masjid-Suriansyah-Banjarmasin-Yang-Bersejarah-2.jpg',
                  -3.293290,
                  114.572505,
                  'Makam Sultan Suriansyah'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://3.bp.blogspot.com/-5n1Roz6qXHA/WQQ3wJwaWSI/AAAAAAAAAMc/Kw6W-ITJ2K8Nw1bCjX-uzWchocwW15vQACLcB/s1600/KB%2BJahri%2BSaleh%2B140914%2B%252814%2529.JPG',
                  -3.308334,
                  114.603441,
                  'Taman Satwa Jahri Saleh'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://cdn2.tstatic.net/banjarmasin/foto/bank/images/suasana-di-wisata-kuliner-mandiri_20180826_113134.jpg',
                  -3.322113,
                  114.593591,
                  'Pusat Kuliner Mandiri'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://www.indonesiakaya.com/uploads/_images_gallery/Papan_selamat_datang_di_Hutan_Wisata_Pulau_Kembang.jpg',
                  -3.299736,
                  114.560830,
                  'Pulau Kembang'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'https://backpackerjakarta.com/wp-content/uploads/2018/02/jembatan-barito-banjarmasin-kalsel.jpg',
                  -3.217090,
                  114.562599,
                  'Jembatan Barito'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  'http://u01.appmifile.com/images/2019/02/11/be6fc5c2-6e7b-45a8-a50c-1e4296eed221.jpg',
                  -3.214259,
                  114.558962,
                  'Pulau Bakut'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(
      String _image, double latitude, double longitude, String placeName) {
    return FlatButton(
      onPressed: () {
        _goToLocation(latitude, longitude);
      },
      padding: EdgeInsets.all(0),
      splashColor: Colors.red,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(10),
        width: 280,
        color: Colors.blueGrey.shade300,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: double.infinity,
                width: 100,
                child: Image.network(
                  _image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      placeName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      height: 12,
                      color: Colors.red,
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '4.1',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        StarIcon(icon: Icons.star),
                        StarIcon(icon: Icons.star),
                        StarIcon(icon: Icons.star),
                        StarIcon(icon: Icons.star),
                        StarIcon(icon: Icons.star_half),
//                        Container(
//                          child: Text(
//                            '476',
//                            style: TextStyle(
//                              color: Colors.black54,
//                              fontSize: 15.0,
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Open: 08.00 - Closed: 21.00 Everyday',
                      style: kMapPlaceBoxStyle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myDetailContainer(String placeName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              placeName,
              style: TextStyle(
                  color: Color(0xff6200ee),
                  fontSize: 7.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Text(
                  '4.1',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
              ),
              StarIcon(icon: Icons.star),
              StarIcon(icon: Icons.star),
              StarIcon(icon: Icons.star),
              StarIcon(icon: Icons.star),
              StarIcon(icon: Icons.star_half),
              Container(
                child: Text(
                  '476',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          child: Text(
            'Open: 08.00 - Closed: 21.00 Everyday',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _googleMaps(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(-3.31987, 114.59075), zoom: 13),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          // ===== Banjarmasin ====
          pasarTerapung1Marker,
          pasarTerapung2Marker,
          museumWasakaMarker,
          waterboomBanuaAnyarMarker,
          tamanKambojaMarker,
          tamanBudayaMarker,
          mesjidRayaSabilalMuhtadinMarker,
          mesjidSultanSuriansyahMarker,
          makamSultanSuriansyahMarker,
          kelentengSoetjiNuraniMarker,
          menaraPandangMarker,
          tamanMaskotBakantanMarker,
          pusatKulinerMandiriMarker,
          kampungSasiranganMarker,
          tamanSatwaJahriSalehMarker,
          // ===== barito Kuala ===
          pulauKembangMarker,
          jembatanBaritoMarker,
          pulauBakutMarker
        },
      ),
    );
  }

  Future<void> _goToLocation(double latitude, double longitude) async {
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(latitude, longitude),
        zoom: 17,
        tilt: 50.0,
        bearing: 45.0)));
  }

  Widget _zoomFunction(Alignment align, IconData icon, bool sign) {
    return Align(
      alignment: align,
      child: IconButton(
        icon: Icon(
          icon,
          color: Color(0xff6200ee),
        ),
        onPressed: () {
          sign ? zoomValue-- : zoomValue++;
          _zoom(zoomValue);
        },
      ),
    );
  }

  Future<void> _zoom(double zoomValue) async {
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-3.319467, 114.593346), zoom: zoomValue)));
  }

  //================ BANJARMASIN ===========================================

  Marker pasarTerapung1Marker = Marker(
    markerId: MarkerId('pasar_terapung_1'),
    position: LatLng(-3.319467, 114.593346),
    infoWindow: InfoWindow(title: 'Pasar Terapung Siring'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );

  Marker pasarTerapung2Marker = Marker(
    markerId: MarkerId('pasar_terapung_2'),
    position: LatLng(-3.278702, 114.566944),
    infoWindow: InfoWindow(title: 'Pasar Terapung Muara Kuin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );

  Marker museumWasakaMarker = Marker(
    markerId: MarkerId('museum_wasaka'),
    position: LatLng(-3.303893, 114.609080),
    infoWindow: InfoWindow(title: 'Museum Wasaka'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker waterboomBanuaAnyarMarker = Marker(
    markerId: MarkerId('waterboom_banua_anyar'),
    position: LatLng(-3.308358, 114.619254),
    infoWindow: InfoWindow(title: 'Waterboom Banua Anyar'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker tamanKambojaMarker = Marker(
    markerId: MarkerId('taman_kamboja'),
    position: LatLng(-3.322084, 114.587207),
    infoWindow: InfoWindow(title: 'Taman Kamboja'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker tamanBudayaMarker = Marker(
    markerId: MarkerId('taman_budaya'),
    position: LatLng(-3.298254, 114.589875),
    infoWindow: InfoWindow(title: 'Taman Budaya Kal-Sel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker mesjidSultanSuriansyahMarker = Marker(
    markerId: MarkerId('mesjid_sultan_suriansyah'),
    position: LatLng(-3.294250, 114.576069),
    infoWindow: InfoWindow(title: 'Mesjid Sultan Suriansyah'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker mesjidRayaSabilalMuhtadinMarker = Marker(
    markerId: MarkerId('mesjid_raya_sabilal_muhtadin'),
    position: LatLng(-3.319082, 114.591277),
    infoWindow: InfoWindow(title: 'Mesjid Raya Sabilal Muhtadin'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker kelentengSoetjiNuraniMarker = Marker(
    markerId: MarkerId('kelenteng_soetji_nurani'),
    position: LatLng(-3.320787, 114.594272),
    infoWindow: InfoWindow(title: 'Kelenteng Soetji Nurani'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker menaraPandangMarker = Marker(
    markerId: MarkerId('menara_pandang'),
    position: LatLng(-3.316997, 114.593136),
    infoWindow: InfoWindow(title: 'Menara Pandang'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker kampungSasiranganMarker = Marker(
    markerId: MarkerId('kampung_sasirangan'),
    position: LatLng(-3.311679, 114.594277),
    infoWindow: InfoWindow(title: 'Kampung Sasirangan'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker makamSultanSuriansyahMarker = Marker(
    markerId: MarkerId('makam_sultan_suriansyah'),
    position: LatLng(-3.293290, 114.572505),
    infoWindow: InfoWindow(title: 'Makam Sultan Suriansyah'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker tamanSatwaJahriSalehMarker = Marker(
    markerId: MarkerId('taman_satwa_jahri_saleh'),
    position: LatLng(-3.308334, 114.603441),
    infoWindow: InfoWindow(title: 'Taman Satwa Jahri Saleh'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker pusatKulinerMandiriMarker = Marker(
    markerId: MarkerId('pusat_kuliner_mandiri'),
    position: LatLng(-3.322113, 114.593591),
    infoWindow: InfoWindow(title: 'Pusat Kuliner Mandiri'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker tamanMaskotBakantanMarker = Marker(
    markerId: MarkerId('taman_maskot_bekantan'),
    position: LatLng(-3.321783, 114.594443),
    infoWindow: InfoWindow(title: 'Taman Maskot Bekantan'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );

  //================ BARITO KUALA ===========================================

  Marker pulauKembangMarker = Marker(
    markerId: MarkerId('pulau_kembang'),
    position: LatLng(-3.299736, 114.560830),
    infoWindow: InfoWindow(title: 'Pulau Kembang'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

  Marker jembatanBaritoMarker = Marker(
    markerId: MarkerId('jembatan_barito'),
    position: LatLng(-3.217090, 114.562599),
    infoWindow: InfoWindow(title: 'Jembatan Barito'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );

  Marker pulauBakutMarker = Marker(
    markerId: MarkerId('pulau_bakut'),
    position: LatLng(-3.214259, 114.558962),
    infoWindow: InfoWindow(title: 'Pulau Bakut'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
  );
}

class StarIcon extends StatelessWidget {
  StarIcon({this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.amber.shade400,
        size: 15.0,
      ),
    );
  }
}
