import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownButton2Demo extends StatefulWidget {
  const DropDownButton2Demo({super.key});

  @override
  State<DropDownButton2Demo> createState() => _DropDownButton2DemoState();
}

class _DropDownButton2DemoState extends State<DropDownButton2Demo> {
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selctedValue;
  List<String> selectedItems = [];
  TextEditingController txtSearchEditingController = TextEditingController();
  @override
  void dispose() {
    txtSearchEditingController.dispose();
    super.dispose();
  }

  List<DropdownMenuItem<String>> addDividersAfterItems(List<String> items) {
    final List<DropdownMenuItem<String>> menuItems = [];
    for (final String item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(
                height: 1,
                thickness: 2,
              ),
            )
        ],
      );
    }
    return menuItems;
  }

  List<double> getCustomItemsHeights() {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40);
      }
      if (i.isOdd) {
        itemsHeights.add(4);
      }
    }
    return itemsHeights;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).hintColor),
                ),
                items: items
                    .map(
                      (String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    )
                    .toList(),
                value: selctedValue,
                onChanged: (value) {
                  selctedValue = value;
                  setState(() {});
                },
                buttonStyleData: const ButtonStyleData(height: 50, width: 100),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: const Row(
                  children: [
                    Icon(
                      Icons.list,
                      size: 16,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        'Select Item',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.amber,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map(
                      (String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                    .toList(),
                value: selctedValue,
                onChanged: (value) {
                  selctedValue = value;
                  setState(() {});
                },
                buttonStyleData: ButtonStyleData(
                  height: 50,
                  width: 160,
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(14),
                      ),
                      border: Border.all(color: Colors.black26),
                      color: Colors.redAccent),
                  elevation: 2,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down_circle,
                  ),
                  iconSize: 15,
                  iconEnabledColor: Colors.yellow,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.redAccent,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all(6),
                    thumbVisibility: MaterialStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                    height: 100, padding: EdgeInsets.only(left: 14, right: 14)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).hintColor),
                ),
                items: addDividersAfterItems(items),
                value: selctedValue,
                onChanged: (value) {
                  selctedValue = value;
                  setState(() {});
                },
                buttonStyleData: const ButtonStyleData(height: 50, width: 100),
                menuItemStyleData: MenuItemStyleData(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  customHeights: getCustomItemsHeights(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).hintColor),
                ),
                items: items
                    .map(
                      (String item) => DropdownMenuItem<String>(
                          value: item,
                          enabled: false,
                          child: StatefulBuilder(
                            builder: (context, menuState) {
                              final isSelectd = selectedItems.contains(item);
                              return InkWell(
                                onTap: () {
                                  isSelectd
                                      ? selectedItems.remove(item)
                                      : selectedItems.add(item);
                                  setState(() {});
                                  menuState(
                                    () {},
                                  );
                                },
                                child: Container(
                                  height: double.infinity,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: Row(
                                    children: [
                                      if (isSelectd)
                                        const Icon(Icons.check_box_outlined)
                                      else
                                        const Icon(
                                            Icons.check_box_outline_blank),
                                      Expanded(
                                        child: Text(
                                          item,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    )
                    .toList(),
                value: selectedItems.isEmpty ? null : selectedItems.last,
                onChanged: (value) {},
                selectedItemBuilder: (context) {
                  return items.map(
                    (item) {
                      return Container(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          selectedItems.join(', '),
                          style: const TextStyle(
                            fontSize: 14,
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 1,
                        ),
                      );
                    },
                  ).toList();
                },
                buttonStyleData: const ButtonStyleData(height: 50, width: 100),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).hintColor),
                ),
                items: items
                    .map(
                      (String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                    )
                    .toList(),
                value: selctedValue,
                onChanged: (value) {
                  selctedValue = value;
                  setState(() {});
                },
                buttonStyleData: const ButtonStyleData(
                  height: 50,
                  width: 100,
                  overlayColor: MaterialStatePropertyAll(Colors.black12),
                ),
                dropdownSearchData: DropdownSearchData(
                  searchController: txtSearchEditingController,
                  searchInnerWidgetHeight: 70,
                  searchInnerWidget: TextField(
                    // expands: true,
                    maxLines: null,
                    controller: txtSearchEditingController,
                    decoration: const InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      hintText: 'Search for..',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return item.value.toString().contains(searchValue);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
