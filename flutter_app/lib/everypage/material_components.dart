import 'package:flutter/material.dart';
import 'package:flutter_app/materialComponents/button_demo.dart';
import 'package:flutter_app/materialComponents/floating_action_button_demo.dart';
import 'package:flutter_app/materialComponents/popup_menu_button_demo.dart';
import 'package:flutter_app/materialComponents/checkbox_demo.dart';
import 'package:flutter_app/materialComponents/radio_demo.dart';
import 'package:flutter_app/materialComponents/switch_demo.dart';
import 'package:flutter_app/materialComponents/slider_demo.dart';
import 'package:flutter_app/materialComponents/datetime_demo.dart';
import 'package:flutter_app/materialComponents/simple_dialog_demo.dart';
import 'package:flutter_app/materialComponents/alert_dialog_demo.dart';
import 'package:flutter_app/materialComponents/bottom_sheet_demo.dart';
import 'package:flutter_app/materialComponents/snack_bar_demo.dart';
import 'package:flutter_app/materialComponents/expansion_panel_demo.dart';
import 'package:flutter_app/materialComponents/chip_demo.dart';
import 'package:flutter_app/materialComponents/data_table_demo.dart';
import 'package:flutter_app/materialComponents/paginated_data_table_demo.dart';
import 'package:flutter_app/materialComponents/card_demo.dart';
import 'package:flutter_app/materialComponents/stepper_demo.dart';
import 'form_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'Stepper', page: StepperDemo()),
          ListItem(title: 'Card', page: CardDemo()),
          ListItem(title: 'PaginatedDataTable', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
          ListItem(title: 'Chip', page: ChipDemo()),
          ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBar', page: SnackBarDemo()),
          ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
          ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'Date & Time', page: DateTimeDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
//          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      )
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}