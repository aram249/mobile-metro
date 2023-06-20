import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../util/constant.dart';

// map widget constructor
class MapWidget extends StatefulWidget {
  @override
  _MapWidget createState() => _MapWidget();
}

class _MapWidget extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: const LatLng(33.7838, -118.1141),
        zoom: 15,
      ),
      children: [
        TileLayer(
          urlTemplate: Constant.mapBoxStyleId,
          additionalOptions: const {'accessToken': Constant.mapBoxAccessToken},
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}
