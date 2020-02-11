import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Type.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeFilter {
  final TemType type;
  bool isSelected;

  TypeFilter(this.type, {this.isSelected = false});
}

class TypeFilterWidget extends StatefulWidget {
  final TypeFilter filter;
  final Function(String) refresh;

  TypeFilterWidget({@required this.filter, this.refresh});

  @override
  State<StatefulWidget> createState() => _TypeFilterWidgetState();
}

class _TypeFilterWidgetState extends State<TypeFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      backgroundColor: MyColors.lightBackground,
      padding: EdgeInsets.all(10),
      label: Text(widget.filter.type.name),
      labelStyle: TextStyle(color: MyColors.lightFont),
      avatar: CachedNetworkImage(
        imageUrl: "https://temtem-api.mael.tech${widget.filter.type.icon}",
        placeholder: (context, url) => Image.asset("assets/unknown.png"),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      selected: widget.filter.isSelected,
      onSelected: (val) {
        setState(() {
          widget.filter.isSelected = val;
          if (widget.refresh != null) widget.refresh(widget.filter.type.name);
        });
      },
    );
  }
}

class SelectTypeModal extends StatelessWidget {
  final Function(String) refresh;
  final List<String> selectedTypes;

  SelectTypeModal({this.refresh, @required this.selectedTypes});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8,
        children: List<Widget>.generate(
          globals.types.length,
          (int index) => TypeFilterWidget(
              filter: TypeFilter(globals.types[index],
                  isSelected:
                      selectedTypes.contains(globals.types[index].name)),
              refresh: refresh),
        ),
      ),
    );
  }
}
