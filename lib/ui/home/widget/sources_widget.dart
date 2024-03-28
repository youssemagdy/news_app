import 'package:flutter/material.dart';
import 'package:news_apps_2/model/soursess_response/Source.dart';

class SourcesWidget extends StatelessWidget {
  SourcesWidget({Key? key, required this.source, this.isSelected = false}) : super(key: key);
  Source source;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).colorScheme.primary : Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Theme.of(context).colorScheme.primary,),
      ),
      child: Text(
        source.name ?? '',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: isSelected ? Colors.white : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
