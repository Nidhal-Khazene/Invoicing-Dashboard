import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/widgets/custom_background_container.dart';
import 'package:invoicing_dashboard/widgets/custom_button.dart';
import 'package:invoicing_dashboard/widgets/latest_transection.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_form.dart';
import 'package:invoicing_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 12),
          const LatestTransection(),
          const Divider(height: 48, color: Color(0xffF1F1F1)),
          const QuickInvoiceForm(),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: "Add more details",
                  backgroundColor: Colors.white,
                  textColor: kPrimaryColor,
                ),
              ),
              const SizedBox(width: 24),
              const Expanded(child: CustomButton(text: "Send Money")),
            ],
          ),
        ],
      ),
    );
  }
}
