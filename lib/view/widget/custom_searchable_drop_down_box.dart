import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../resources/constant/app_style.dart';

class CustomSearchableDropDownBox<T> extends StatelessWidget {
  const CustomSearchableDropDownBox({
    super.key,
    required this.dropDownKey,
    required this.dropDownItems,
    this.compareFn,
    required this.dropDownBuilder,
    required this.labelText,
    required this.hintText,
    required this.searchBoxHintText,
    this.itemBuilder,
    required this.onChange,
    this.filterFn,
    this.validatorName,
    this.isEnable,
    this.selectedItem,
    this.isNeedValidation = true
  });

  final GlobalKey<DropdownSearchState> dropDownKey;
  final List<T> dropDownItems;
  final DropdownSearchBuilder<T>? dropDownBuilder;
  final String labelText,hintText,searchBoxHintText;
  final DropdownSearchPopupItemBuilder<T>? itemBuilder;
  final ValueChanged<T?>? onChange;
  final DropdownSearchCompareFn<T>? compareFn;
  final DropdownSearchFilterFn<T>? filterFn;
  final String? validatorName;
  final bool? isEnable;
  final T? selectedItem;
  final isNeedValidation;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      selectedItem: selectedItem,
      enabled: isEnable??true,
      key: dropDownKey,
      items: (filter, loadProps) => dropDownItems,
      compareFn: compareFn,
      dropdownBuilder:dropDownBuilder,
      filterFn: filterFn,
      validator: (value) {
        if(isNeedValidation){
          if (value == null || value.toString().isEmpty) {
            return 'Please select ${validatorName}';
          }
          return null;
        }else{
          return null;
        }
      },
      // decoratorProps: DropDownDecoratorProps(
      //   // decoration: InputDecoration(
      //   //   isDense: true,
      //   //   filled: true,
      //   //   fillColor: AppColors.appWhite,
      //   //   labelStyle: AppTextStyle.normalPrimaryText14,
      //   //   hintText: hintText,
      //   //   hintStyle: AppTextStyle.normalPrimaryText14,
      //   //   border: AppUtils.enableWithoutBorder!,
      //   //   focusedBorder: AppUtils.focusBorder,
      //   //   enabledBorder: AppUtils.enableWithoutBorder,
      //   //   errorStyle: AppTextStyle.errorTextStyle,
      //   // ),
      //   decoration: InputDecoration(
      //     labelText: 'ui mode: ',
      //     border: OutlineInputBorder(),
      //   ),
      // ),
      // decoratorProps: DropDownDecoratorProps(
      //   decoration: InputDecoration(
      //     labelText: 'ui mode: ',
      //     border: OutlineInputBorder(),
      //   ),
      // ),
      popupProps: PopupProps.menu(
        fit: FlexFit.loose,
        menuProps: MenuProps(
          shape: RoundedRectangleBorder(
            borderRadius: AppStyle.radius10,
          ),
          backgroundColor: Colors.white,
        ),

        //Item Box Height
        constraints: BoxConstraints(
          maxHeight: 250,
        ),
        showSearchBox: true,
        showSelectedItems: true,

        // Search field
        searchFieldProps: TextFieldProps(
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black26),
            // decoration: InputDecoration(
            //     filled: true,
            //     fillColor: AppColors.appWhite,
            //     border: AppUtils.enableBorder,
            //     enabledBorder: AppUtils.enableBorder,
            //     focusedBorder: AppUtils.enableBorder,
            //     hintText: searchBoxHintText,
            //     hintStyle: AppTextStyle.normalText14
            // )
            // decoration: InputDecoration(
            //   border: OutlineInputBorder(),
            // )
            // decoration: DropdownSearchDecoration(
            //     filled: true,
            //     fillColor: AppColors.appWhite,
            //     border: AppUtils.enableBorder,
            //     enabledBorder: AppUtils.enableBorder,
            //     focusedBorder: AppUtils.enableBorder,
            //     hintText: searchBoxHintText,
            //     hintStyle: AppTextStyle.normalText14
            // )
        ),

        // Item List
        itemBuilder: itemBuilder,

        // Not match or found
        emptyBuilder: (context, searchEntry){
          return SizedBox(
            height: 50,
            child: Center(
              child: Text(searchEntry.isEmpty?'No Data Found':'$searchEntry - Not matched.',
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black26),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
      // change value
      onSelected: onChange,
    );
  }
}

class CustomSearchableDropdownItemBuilder<T> extends StatelessWidget {
  const CustomSearchableDropdownItemBuilder({
    super.key,
    required this.item,
    required this.isSelected,
    this.isActive = true,
    this.isLocked = false,
    this.isShowStatus = false
  });

  final bool isSelected;
  final T item;
  final bool isActive;
  final bool isLocked;
  final bool isShowStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: isSelected ? Colors.green[50] : Colors.black12
        ),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text('$item', style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500
              )),
            ),
          ],
        ),
      ),
    );
  }
}