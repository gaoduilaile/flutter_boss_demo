import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTab extends StatefulWidget {
  const IconTab({Key key, this.text, this.icon, this.color})
      : assert(text != null || icon != null || color != null),
        super(key: key);

  final String text;
  final String icon;
  final Color color;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IconTabState();
  }
}

const double _kTextAndIconTabeHeight = 50;
const double _kMarginBottom = 3;

class IconTabState extends State<IconTab> {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    double height = _kTextAndIconTabeHeight;
    Widget label = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          child: new Image(
            image: new AssetImage(widget.icon),
            height: 30.0,
            width: 30.0,
          ),
          margin: const EdgeInsets.only(bottom: _kMarginBottom),
        ),
        _buildLabelText()
      ],
    );

    return new SizedBox(
      height: height,
      child: new Center(
        child: label,
        heightFactor: 1.0,
      ),
    );
  }

  Widget _buildLabelText() {
    return new Text(
      widget.text,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: TextStyle(color: widget.color),
    );
  }
}
