import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = '/ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Trasportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Trasportation selectedTransportation = Trasportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Activar modo desarrollador'),
          value: isDeveloper,
          onChanged: (value) => setState(() => isDeveloper = value),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('Transportation'),
              subtitle: const Text('Viajar por carro'),
              value: Trasportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Trasportation.car;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: const Text('Viajar en bote'),
              value: Trasportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Trasportation.boat;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Plane'),
              subtitle: const Text('Viajar en avion'),
              value: Trasportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Trasportation.plane;
                },
              ),
            ),
            RadioListTile(
              title: const Text('Submarine'),
              subtitle: const Text('Viajar en submarino'),
              value: Trasportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(
                () {
                  selectedTransportation = Trasportation.submarine;
                },
              ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Wants breakfast'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() => wantsBreakfast = value!),
        ),
        CheckboxListTile(
          title: const Text('Wants lunch'),
          value: wantsLunch,
          onChanged: (value) => setState(() => wantsLunch = value!),
        ),
        CheckboxListTile(
          title: const Text('Wants dinner'),
          value: wantsDinner,
          onChanged: (value) => setState(() => wantsDinner = value!),
        ),
      ],
    );
  }
}
