import 'package:flutter/material.dart';
import 'package:nlw_payflow/shared/themes/app_colors.dart';
import 'package:nlw_payflow/shared/themes/app_text_styles.dart';
import 'package:nlw_payflow/shared/widgets/bottom_sheet/bottom_sheet_widget.dart';
import 'package:nlw_payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível indentificar um código de barras.",
      subtitle: "Tente novamente ou digite o código do seu boleto.",
      firstLabel: 'Escanear novamente',
      firstOnPressed: () {},
      secondaryLabel: 'Digitar código',
      secondaryOnPressed: () {},
    );
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'Escaneie o código de barra do boleto',
              style: TextStyles.buttonBackground,
            ),
            leading: const BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
              Expanded(child: Container(color: Colors.black.withOpacity(0.6))),
              Expanded(flex: 2, child: Container(color: Colors.white)),
              Expanded(child: Container(color: Colors.black.withOpacity(0.6))),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            firstLabel: 'Inserir código do boleto',
            firstOnPressed: () {},
            secondaryLabel: 'Adicionar da galeria',
            secondaryOnPressed: () {},
          ),
        ),
      ),
    );
  }
}
