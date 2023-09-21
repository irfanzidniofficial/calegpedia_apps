// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calegpedia_apps/data/dummy/data_dummy_agenda.dart';
import 'package:calegpedia_apps/presentation/agenda/agenda_detail_page.dart';
import 'package:flutter/material.dart';

import 'package:calegpedia_apps/common/theme.dart';
import 'package:calegpedia_apps/utils/images.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AgendaCheckPage extends StatefulWidget {
  const AgendaCheckPage({super.key});

  @override
  State<AgendaCheckPage> createState() => _AgendaCheckPageState();
}

class _AgendaCheckPageState extends State<AgendaCheckPage> {
  bool _checkinImage = false;
  String imageCheck = Images.checkinImage;

  void _handleTap() {
    setState(() {
      if (_checkinImage) {
        imageCheck = Images.checkinImage;
      } else {
        imageCheck = Images.checkoutImage;
      }
      _checkinImage = !_checkinImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Absensi",
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "17:30",
              style: darkBlueTextStyle.copyWith(
                fontSize: 43,
                fontWeight: bold,
              ),
            ),
            Text(
              'Jumat, 12 Desember',
              style: darkBlueTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: _handleTap,
              child: Image.asset(
                imageCheck,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: DetailCheckWidget(
                      title: "Check In",
                      hours: "09:12",
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: DetailCheckWidget(
                      title: "Check Out",
                      hours: "--:--",
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: DetailCheckWidget(
                      title: "Working Hours",
                      hours: "--:--",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: const CustomBottomSheet(),
    );
  }
}

class DetailCheckWidget extends StatelessWidget {
  final String title;
  final String? hours;
  const DetailCheckWidget({
    Key? key,
    this.title = "--:--",
    required this.hours,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Images.checkinIcon,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          hours!,
          style: darkBlueTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
        ),
        Text(
          title,
          style: greyTextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
        )
      ],
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AgendaDetailPage();
                    },
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 5,
                ),
                child: Text(
                  'Show More',
                  style: darkBlueTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF748EF3).withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.calendarIcon),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Desember 2022",
                    style: lightBlueTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                      color: const Color(0xFF748EF3),
                    ),
                  ),
                ],
              ),
            ),
            const DataTableWidget(),
          ],
        ),
      ),
    );
  }
}

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({super.key});

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      source: employeeDataSource,
      columns: <GridColumn>[
        GridColumn(
          columnName: 'id',
          label: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: const Text(
              'Tanggal',
            ),
          ),
        ),
        GridColumn(
            columnName: 'name',
            label: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: const Text('Check In'))),
        GridColumn(
            columnName: 'designation',
            label: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: const Text(
                  'Check Out',
                  overflow: TextOverflow.ellipsis,
                ))),
        GridColumn(
            columnName: 'hours',
            label: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: const Text('Hours'))),
      ],
    );
  }
}

class EmployeeDataSource extends DataGridSource {
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<String>(
                columnName: 'id',
                value: e.date,
              ),
              DataGridCell<String>(
                columnName: 'checkIn',
                value: e.checkIn,
              ),
              DataGridCell<String>(
                columnName: 'designation',
                value: e.checkOut,
              ),
              DataGridCell<String>(
                columnName: 'hours',
                value: e.hours,
              ),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
