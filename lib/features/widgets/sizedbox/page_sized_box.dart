import 'package:flutter/cupertino.dart';
import 'package:selcuk_topluluk/core/extension/context_extension.dart';

class ProjectSizedBox extends StatefulWidget {
  const ProjectSizedBox({super.key});

  @override
  State<ProjectSizedBox> createState() => _ProjectSizedBoxState();
}

//TO DO
class _ProjectSizedBoxState extends State<ProjectSizedBox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  SizedBox emptyBox() {
    return SizedBox(height: context.height * 0.02);
  }

  SizedBox emptyBox2x() {
    return SizedBox(height: context.height * 0.04);
  }

  SizedBox emptyBox4x() {
    return SizedBox(height: context.height * 0.08);
  }
}
