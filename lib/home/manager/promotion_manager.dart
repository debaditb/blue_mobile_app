//import 'package:blue_mobile_app/home/model/Promotion.dart';
//import 'package:rxdart/rxdart.dart';
//
//class ContactManager {
//  final PublishSubject<List<Promotion>> _collectionSubject = PublishSubject();
//
//  Observable<List<Promotion>> get browse$ => _collectionSubject.stream;
//
//  ContactManager() {
//    _filterSubject
//        .debounceTime(Duration(milliseconds: 500))
//        .switchMap((filter) async* {
//      yield await ContactService.browse(filter: filter);
//    }).listen((contacts) async {
//      _collectionSubject.add(contacts);
//    });
//  }
//
//  void dispose() {
//    _countSubject.close();
//    _filterSubject.close();
//  }
//}