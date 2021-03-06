import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({ Key? key }) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Escaneie o código de barras do boleto",
              style: AppTextStyles.buttonBackground,
            ),
            centerTitle: true,
            leading: BackButton(
              color: AppColors.background,
            ),
          ),
          body: Column(
            children: [
            Expanded(
              child: Container(
                color: Colors.black.withOpacity(0.6),
                )
              ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.transparent,
                )
              ),Expanded(
              child: Container(
                color: Colors.black.withOpacity(0.6),
                )
              ),
            ],
          ),
          bottomNavigationBar: SetLabelButtons(
            primaryLabel: "Inserir o codigo do boleto",
            primaryOnPressed: (){},
            secondaryLabel: "Adicionar da galeria", 
            secondaryOnPressed: (){},
          ),
        ),
      ),
    );          
  }
}