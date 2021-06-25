import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:website/viewmodels/publication/publication_details_view_model.dart';

class PublicationDetails extends StatelessWidget {
  final int id;
  const PublicationDetails({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PublicationDetailsViewModel>.reactive(
      viewModelBuilder: () => PublicationDetailsViewModel(),
      onModelReady: (model) => model.getPublicationData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: <Widget>[
            model.publication == null
                ? Container()
                : SizedBox(
                    height: 320,
                    child: Image.network(
                      model.publication.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
            model.publication == null
                ? CircularProgressIndicator()
                : Text(
                    model.publication.title,
                    style: TextStyle(fontSize: 60),
                  ),
          ],
        ),
      ),
    );
  }
}
