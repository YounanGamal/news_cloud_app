import 'package:flutter/material.dart';

class SettingsFragment extends StatefulWidget {
  SettingsFragment({super.key});

  @override
  State<SettingsFragment> createState() => _SettingsFragmentState();
}

class _SettingsFragmentState extends State<SettingsFragment> {
  List<String> itemsList = ['English', 'Arabic'];

  String? selectedItem = 'English';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Language',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 23),
              child: SizedBox(
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     width: 1,
                //     color: Color(0xff39A552),
                //   ),
                // ),

                width: double.infinity,
                // height: 60,
                child: DropdownButtonFormField<String>(

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xff39A552),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff39A552),
                      ))),
                  value: selectedItem,
                  items: itemsList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (item) => setState(() {
                    selectedItem = item;
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
