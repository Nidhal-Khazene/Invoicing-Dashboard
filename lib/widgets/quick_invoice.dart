import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/widgets/custom_background_container.dart';
import 'package:invoicing_dashboard/widgets/latest_transection.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_header.dart';
import 'package:invoicing_dashboard/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 12),
          LatestTransection(),
          Divider(height: 48, color: Color(0xffF1F1F1)),
          TitleTextField(
            title: "Customer name",
            hintText: "Type customer name",
          ),
        ],
      ),
    );
  }
}
