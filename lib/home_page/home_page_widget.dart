import '../edit_profile/edit_profile_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  LatLng currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            color: FlutterFlowTheme.primaryColor,
          ),
        ),
      );
    }
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xFFED2727),
        automaticallyImplyLeading: true,
        title: Text(
          'Boton De Panico',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
        actions: [
          Lottie.asset(
            'assets/lottie_animations/69754-olympics-karate.json',
            width: 80,
            height: 80,
            fit: BoxFit.contain,
            animate: true,
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        elevation: 20,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -0.14),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Contactos',
                icon: Icon(
                  Icons.contacts,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF636060),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: 0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.07),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Llamadas',
                icon: Icon(
                  Icons.call,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF5B5A5A),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 12,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.72),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Como Usar',
                icon: Icon(
                  Icons.info_outline,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF767676),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.38),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Comprar',
                icon: Icon(
                  Icons.attach_money,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF625E5E),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.55),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Compartir',
                icon: Icon(
                  Icons.share_sharp,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF717171),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.38),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileWidget(),
                    ),
                  );
                },
                text: 'Editar Perfil',
                icon: Icon(
                  Icons.account_circle,
                  size: 15,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF646363),
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.06, -0.91),
              child: Lottie.asset(
                'assets/lottie_animations/42631-mechanical-engineering-setting.json',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
                animate: true,
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          FlutterFlowGoogleMap(
            initialLocation: currentUserLocationValue,
            markerColor: GoogleMarkerColor.blue,
            mapType: MapType.normal,
            style: GoogleMapStyle.retro,
            initialZoom: 16,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          ),
          Align(
            alignment: AlignmentDirectional(-0.02, 0.29),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Button',
              options: FFButtonOptions(
                width: 130,
                height: 40,
                color: FlutterFlowTheme.primaryColor,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 12,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-0.22, 0.84),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(100, 150, 100, 0),
              child: Lottie.asset(
                'assets/lottie_animations/lf30_editor_l4piwvhg.json',
                width: 400,
                height: 200,
                fit: BoxFit.cover,
                animate: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
