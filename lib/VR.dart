
import 'package:flutter/material.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:vector_math/vector_math_64.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ARKitController arkitController;

  @override
  void dispose() {
    arkitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: ARKitSceneView(
        onARKitViewCreated: (controller) => arView(controller),
      ));
}

void arView(ARKitController controller) {
  final nodeAr = ARKitNode(
    geometry: ARKitSphere(materials: [
       ARKitMaterial(diffuse: ARKitMaterialProperty.image('assets/vr 1 pace.jpg'),
     doubleSided: true,
       ),
    ],
      radius: 2,

    ),
    position: Vector3(0,0,0,)
  );
  controller.add(nodeAr);
}
