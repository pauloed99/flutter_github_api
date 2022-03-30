import 'package:flutter/material.dart';
import 'package:flutter_github_api/views/widgets/custom_text_widget.dart';

class RepositoriesListPage extends StatelessWidget {
  const RepositoriesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomTextWidget(text: 'Lista de Repositórios do Github'),
      ),
      body: Container(

      ),
    );
  }
}
