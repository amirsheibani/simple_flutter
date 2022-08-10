import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class CustomConsumer<T> extends SingleChildStatefulWidget {
  const CustomConsumer({
    Key? key,
    required this.builder,
    this.listener,
    this.whenBuild,
    this.whenListen,
    Widget? child,
  }) : super(key: key, child: child);

  final Widget Function(
    BuildContext context,
    T value,
    Widget? child,
  ) builder;

  final bool Function(T value)? whenBuild;
  final bool Function(T value)? whenListen;

  final void Function(
    BuildContext context,
    T value,
  )? listener;

  @override
  State<StatefulWidget> createState() {
    return _CustomConsumerState<T>();
  }
}

class _CustomConsumerState<T> extends SingleChildState<CustomConsumer<T>> {
  ChangeNotifier? _changeNotifier;

  bool _whenBuild = true;
  bool _whenListen = true;

  @override
  void initState() {


    super.initState();
  }

  @override
  void dispose() {
    // if(_whenListen && widget.listener != null){
    //   _changeNotifier?.removeListener(_listener);
    //   _changeNotifier?.dispose();
    // }
    super.dispose();
  }

  _listener() {
    widget.listener!(
      context,
      Provider.of<T>(context, listen: false),
    );
  }


  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if(widget.whenBuild != null){
      _whenBuild = widget.whenBuild!(Provider.of<T>(context));
    }
    if(widget.whenListen != null){
      _whenListen = widget.whenListen!(Provider.of<T>(context));
    }

    if(_whenListen){
      if (_changeNotifier == null && widget.listener != null) {
        _changeNotifier = Provider.of<T>(context) as ChangeNotifier;
        _changeNotifier!.addListener(_listener);
      }
    }

    return _whenBuild ? widget.builder(
      context,
      Provider.of<T>(context),
      child,
    ) : child ?? const SizedBox();
  }
}





