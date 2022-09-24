import 'package:flutter/material.dart';

/// Simple use for this extension
///
/// Widget exampleOne(BuildContext context) {
///   return GridView.count(
///       crossAxisCount:
///           context.responsive(defaultValue: 2, sm: 2, md: 2, lg: 3, xl: 4));
/// }
///
/// Widget exampleTwo(BuildContext context) {
///   return Container(
///     child: context.responsive(
///       defaultValue: Column(
///         children: [
///           Container(
///             height: 75,
///             color: Colors.redAccent,
///           ),
///           Container(
///             height: 75,
///             color: Colors.blueGrey,
///           ),
///           Container(
///             height: 75,
///             color: Colors.green,
///           ),
///           Container(
///             height: 75,
///             color: Colors.deepPurple,
///           ),
///         ],
///       ),
///       lg: Row(
///         children: [
///           Column(
///             children: [
///               Container(
///                 height: 75,
///                 color: Colors.redAccent,
///               ),
///               Container(
///                 height: 75,
///                 color: Colors.blueGrey,
///               ),
///             ],
///           ),
///           Column(
///             children: [
///               Container(
///                 height: 75,
///                 color: Colors.green,
///               ),
///               Container(
///                 height: 75,
///                 color: Colors.deepPurple,
///               ),
///             ],
///           ),
///         ],
///       )
///     ),
///   );
/// }

extension Responsive on BuildContext {
  T responsive<T>({required T defaultValue, T? sm, T? md, T? lg, T? xl}) {
    final w = MediaQuery.of(this).size.width;
    return w >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultValue)
        : w >= 1024
            ? (lg ?? md ?? sm ?? defaultValue)
            : w >= 768
                ? (md ?? sm ?? defaultValue)
                : w >= 640
                    ? (sm ?? defaultValue)
                    : defaultValue;
  }
}
