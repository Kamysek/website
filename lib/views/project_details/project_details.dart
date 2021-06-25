import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/viewmodels/project/project_details_view_model.dart';

class ProjectDetails extends StatelessWidget {
  final int id;
  const ProjectDetails({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectDetailsViewModel>.reactive(
      viewModelBuilder: () => ProjectDetailsViewModel(),
      onModelReady: (model) => model.getProjectData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: <Widget>[
            model.project == null
                ? Container()
                : SizedBox(
                    height: 150,
                    child: Image.network(
                      model.project.imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
            model.project == null
                ? CircularProgressIndicator()
                : Text(
                    model.project.title,
                    style: TextStyle(fontSize: 60),
                  ),
          ],
        ),
      ),
    );
  }
}
