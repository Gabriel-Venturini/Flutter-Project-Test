import 'package:furadeiras_app/lib/Models/furadeira.dart';
import 'package:furadeiras_app/lib/widgets/card_furadeira.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  var furadeiras = [
    Furadeira("Bosch", "GSB 13 RE", "bosch_gsb13re.jpg"), // nome , desc, img
    Furadeira("Mondial", "NFFI 07 M", "mondial_nffi_07m.jpg"),
    Furadeira("Bosch", "GSB 450 RE", "bosch_gsb450re.jpg"),
    Furadeira("Vonder", "PFV 012L", "vonder_pfv012l.jpg"),
    Furadeira("Black Decker", "TM500 BR", "blackdecker_tm500br.jpg"),
    Furadeira("Skil", "6600", "skil_6600.jpg"),
    Furadeira("Dewalt", "DWD 500BR", "dewalt_dwd502br.jpg"),
    Furadeira("Wap", "EFI 600K", "wap_efi600k.jpg"),
    Furadeira("Makita", "HP1640", "makita_hp1640.jpg"),
    Furadeira("Wap", "EFPI 1000", "wap_efpi1000.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top 10 Furadeiras de Impacto"),
      ),
      body: ListView.builder(
          itemCount: furadeiras.length,
          itemBuilder: (BuildContext context, int index) {
            return CardFuradeira(
                nome: furadeiras[index].nome,
                descricao: furadeiras[index].descricao,
                imagem: furadeiras[index].imagem);
          }),
    );
  }
}
