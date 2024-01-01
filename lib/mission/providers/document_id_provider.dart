import 'package:flutter/material.dart';
import '../models/document_id_model.dart';

class DocumentIdProvider with ChangeNotifier {
  late DocumentIdModel _documentId;

  DocumentIdModel get documentId => _documentId;

  void setDocumentId(String newDocumentId) {
    _documentId = DocumentIdModel(newDocumentId);
    notifyListeners();
  }
}
