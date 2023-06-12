// ignore_for_file: use_key_in_widget_constructors

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_deshboard/core/theme/app_colors.dart';
import 'package:flutter_web_deshboard/presentation/view/widget/custom_text.dart';

class AvailableDriversTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: AppColors.primaryColor.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: AppColors.colorGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           const Row(
            children: [
              SizedBox(width: 10),
              CustomText(
                  text: "Available Drivers",
                  color: AppColors.colorGrey,
                  weight: FontWeight.bold),
            ],
          ),
          Expanded(
            child: DataTable2(
                columnSpacing: 12,
            isVerticalScrollBarVisible:false,
            isHorizontalScrollBarVisible: false,
                horizontalMargin: 12,
                columns: const [
                  DataColumn2(label: Text("Name"), size: ColumnSize.L),
                  DataColumn(label: Text('Location')),
                  DataColumn(label: Text('Rating')),
                  DataColumn(label: Text('Action')),
                ],
                rows: List<DataRow>.generate(
                    7,
                    (index) => DataRow(cells: [
                          const DataCell(CustomText(text: "Santos Enoque")),
                          const DataCell(CustomText(text: "New yourk city")),
                          const DataCell(Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.star,
                                  color: Colors.deepOrange, size: 18),
                              SizedBox(width: 5),
                              CustomText(text: "4.5")
                            ],
                          )),
                          DataCell(Container(
                              decoration: BoxDecoration(
                                color: AppColors.light,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: AppColors.primaryColor, width: .5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              child: CustomText(
                                text: "Assign Delivery",
                                color: AppColors.primaryColor.withOpacity(.7),
                                weight: FontWeight.bold,
                              ))),
                        ]))),
          ),
       
        ],
      ),
    );
  }
}
