import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _searchResults = [];
  List<String> get searchResults => _searchResults;
  set searchResults(List<String> value) {
    _searchResults = value;
  }

  void addToSearchResults(String value) {
    searchResults.add(value);
  }

  void removeFromSearchResults(String value) {
    searchResults.remove(value);
  }

  void removeAtIndexFromSearchResults(int index) {
    searchResults.removeAt(index);
  }

  void updateSearchResultsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchResults[index] = updateFn(_searchResults[index]);
  }

  void insertAtIndexInSearchResults(int index, String value) {
    searchResults.insert(index, value);
  }

  int _id = 0;
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;
  }

  String _poster = '';
  String get poster => _poster;
  set poster(String value) {
    _poster = value;
  }

  String _mediaType = '';
  String get mediaType => _mediaType;
  set mediaType(String value) {
    _mediaType = value;
  }

  String _releaseDate = '';
  String get releaseDate => _releaseDate;
  set releaseDate(String value) {
    _releaseDate = value;
  }

  String _reviewText = '';
  String get reviewText => _reviewText;
  set reviewText(String value) {
    _reviewText = value;
  }

  String _posterURL = '';
  String get posterURL => _posterURL;
  set posterURL(String value) {
    _posterURL = value;
  }

  double _ratingValue = 0.0;
  double get ratingValue => _ratingValue;
  set ratingValue(double value) {
    _ratingValue = value;
  }

  String _reviewID = '';
  String get reviewID => _reviewID;
  set reviewID(String value) {
    _reviewID = value;
  }
}
