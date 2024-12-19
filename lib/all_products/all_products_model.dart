import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_products_widget.dart' show AllProductsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AllProductsModel extends FlutterFlowModel<AllProductsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView-Mobile widget.

  PagingController<DocumentSnapshot?, ProductosRecord>?
      listViewMobilePagingController;
  Query? listViewMobilePagingQuery;
  List<StreamSubscription?> listViewMobileStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    for (var s in listViewMobileStreamSubscriptions) {
      s?.cancel();
    }
    listViewMobilePagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ProductosRecord>
      setListViewMobileController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewMobilePagingController ??=
        _createListViewMobileController(query, parent);
    if (listViewMobilePagingQuery != query) {
      listViewMobilePagingQuery = query;
      listViewMobilePagingController?.refresh();
    }
    return listViewMobilePagingController!;
  }

  PagingController<DocumentSnapshot?, ProductosRecord>
      _createListViewMobileController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, ProductosRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryProductosRecordPage(
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewMobileStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
