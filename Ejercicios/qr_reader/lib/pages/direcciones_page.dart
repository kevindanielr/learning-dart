import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class DireccionesPage extends StatelessWidget {
  const DireccionesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scansURL = scanListProvider.scans;

    return ListView.builder(
      itemCount: scansURL.length,
      itemBuilder: (_, i) => ListTile(
        leading:
            Icon(Icons.home_outlined, color: Theme.of(context).primaryColor),
        title: Text(scansURL[i].valor),
        subtitle: Text(scansURL[i].id.toString()),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
        onTap: () => print(scansURL[i].id),
      ),
    );
  }
}
