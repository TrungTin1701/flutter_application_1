// Widget _tabContentView(CartUiModel cartUiModel) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       Flexible(
//         child: Builder(builder: (context) {
//           return CustomScrollView(
//               physics: const NeverScrollableScrollPhysics(),
//               slivers: [
//                 SliverAppBar(
//                   toolbarHeight: 0,
//                   elevation: 3,
//                   forceElevated: true,
//                   systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
//                     statusBarColor: Colors.transparent,
//                   ),
//                   backgroundColor: Colors.white,
//                   centerTitle: true,
//                   bottom: TabBar(
//                     overlayColor:
//                         MaterialStateProperty.all(HaloColors.transparent),
//                     isScrollable: true,
//                     indicator: const BoxDecoration(),
//                     indicatorColor: HaloColors.transparent,
//                     labelColor: HaloColors.primary,
//                     labelPadding: EdgeInsets.zero,
//                     labelStyle:
//                         context.bodyText2?.primary().mediumSize().bold(),
//                     unselectedLabelColor: HaloColors.secondary,
//                     unselectedLabelStyle:
//                         context.bodyText2?.secondary().mediumSize().bold(),
//                     tabs: <Widget>[
//                       Tab(
//                         child: IntrinsicHeight(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 8.0, right: 8),
//                                 child: Text(
//                                   cartUiModel.countOrders?.first == false ||
//                                           cartUiModel.countOrders?.first == null
//                                       ? context
//                                               .localizations()
//                                               ?.cart_screen_main_tour_title ??
//                                           "Tour"
//                                       : context
//                                               .localizations()
//                                               ?.cart_screen_main_tour_title_1 ??
//                                           "Tour (1)",
//                                 ),
//                               ),
//                               const VerticalDivider(
//                                 color: Colors.grey,
//                                 thickness: 1,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Tab(
//                         child: IntrinsicHeight(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 8.0, right: 8),
//                                 child: Text(
//                                   (cartUiModel.countOrders?[1] == false ||
//                                           cartUiModel.countOrders?[1] == null)
//                                       ? context
//                                               .localizations()
//                                               ?.cart_screen_main_flight_title ??
//                                           "Vé máy bay"
//                                       : context
//                                               .localizations()
//                                               ?.cart_screen_main_flight_title_1 ??
//                                           "Vé máy bay (1)",
//                                 ),
//                               ),
//                               const VerticalDivider(
//                                 color: Colors.grey,
//                                 thickness: 1,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Tab(
//                         child: IntrinsicHeight(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Padding(
//                                 padding:
//                                     const EdgeInsets.only(left: 8.0, right: 8),
//                                 child: Text(
//                                   cartUiModel.countOrders?.last == false ||
//                                           cartUiModel.countOrders?.last == null
//                                       ? context
//                                               .localizations()
//                                               ?.cart_screen_main_car_title ??
//                                           "Thuê xe"
//                                       : context
//                                               .localizations()
//                                               ?.cart_screen_main_car_title_1 ??
//                                           "Thuê xe (1)",
//                                 ),
//                               ),

//                               // const VerticalDivider(
//                               //   color: Colors.grey,
//                               //   thickness: 1,
//                               // ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SliverFillRemaining(
//                   child: TabBarView(
//                     children: [
//                       TabCartTourView(
//                         ordersTour: cartUiModel.ordersTour,
//                         refreshCallback: () {
//                           refreshCountItemCart();
//                         },
//                       ),
//                       TabCartFlightView(
//                         refreshCallback: () {
//                           refreshCountItemCart();
//                         },
//                       ),
//                       TabCartCarView(
//                         refreshCallback: () {
//                           refreshCountItemCart();
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ]);
//         }),
//       ),
//     ],
//   );
// }
