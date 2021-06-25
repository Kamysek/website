import 'package:flutter/material.dart';
import 'package:website/datamodels/publication_item_model.dart';
import 'package:website/locator.dart';
import 'package:website/services/api.dart';

class PublicationDetailsViewModel extends ChangeNotifier {
  final Api _api = locator<Api>();

  PublicationItemModel _publication;

  PublicationItemModel get publication => _publication;

  Future getPublicationData(int id) async {
    var response = await _api.getPublication(id);

    if (response is String) {
      _publication = PublicationItemModel(title: response);
    } else {
      _publication = response;
    }

    notifyListeners();
  }
}
