import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/bloc/blocProvider.dart';
import 'package:temopedia/bloc/searchBloc.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TypeFilter {
  final TemTemApiType type;
  bool isSelected;

  TypeFilter(this.type, {this.isSelected = false});
}

class TypeFilterWidget extends StatefulWidget {
  final TypeFilter filter;

  TypeFilterWidget({@required this.filter});

  @override
  State<StatefulWidget> createState() => _TypeFilterWidgetState();
}

class _TypeFilterWidgetState extends State<TypeFilterWidget> {
  SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = BlocProvider.of<SearchBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      backgroundColor: MyColors.lightBackground,
      padding: EdgeInsets.all(10),
      label: Text(widget.filter.type.name),
      labelStyle: TextStyles.lightText,
      avatar: CachedNetworkImage(
        imageUrl: "https://temtem-api.mael.tech${widget.filter.type.icon}",
        placeholder: (context, url) => Image.asset("assets/unknown.png"),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      selected: widget.filter.isSelected,
      onSelected: (val) => val
          ? _searchBloc.addTypeFilter(widget.filter.type.name)
          : _searchBloc.removeTypeFilter(widget.filter.type.name),
    );
  }
}

class SelectTypeModal extends StatelessWidget {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Choose types you want to filter", style: TextStyles.lightText),
          SizedBox(height: 8),
          StreamBuilder<List<String>>(
              stream:
                  BlocProvider.of<SearchBloc>(context).onSelectedTypesChanged,
              builder: (context, snapshot) {
                if (!snapshot.hasData) return Container();
                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  children: List<Widget>.generate(
                    globals.types.length,
                    (int index) => TypeFilterWidget(
                        filter: TypeFilter(globals.types[index],
                            isSelected: snapshot.data
                                .contains(globals.types[index].name))),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
