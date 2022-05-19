// import 'dart:async';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:data/entities/tour/tour_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_blurhash/flutter_blurhash.dart';
// import 'package:flutter_module/halo/represents/tour/features/detail/model/tour_detail_info_model.dart';
// import 'package:theme/theme.dart';

// class TourDetailImageSliderView extends StatefulWidget {
//   const TourDetailImageSliderView(
//       {Key? key, this.tourDetailMedia, this.tourDetail})
//       : super(key: key);

//   final List<TourDetailMedia>? tourDetailMedia;
//   final TourDetail? tourDetail;

//   @override
//   _TourDetailImageSliderViewState createState() =>
//       _TourDetailImageSliderViewState();
// }

// class _TourDetailImageSliderViewState extends State<TourDetailImageSliderView> {
//   late PageController _pageController;
//   int activePage = 0;

//   late Timer timer;
//   late Duration autoplayDuration = const Duration(seconds: 4);
//   late Duration animationDuration = const Duration(seconds: 3);
//   late Duration backDuration = const Duration(seconds: 3);

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(viewportFraction: 0.99, initialPage: 0);

//     WidgetsBinding.instance?.addPostFrameCallback(
//         (_) => timer = Timer.periodic(autoplayDuration, (timer) {
//               var length = (widget.tourDetailMedia?.length ?? 0) - 1;
//               if (_pageController.hasClients) {
//                 if ((_pageController.page?.round()) == length) {
//                   _pageController.animateToPage(0,
//                       duration: backDuration, curve: Curves.easeInOut);
//                 } else {
//                   _pageController.nextPage(
//                       duration: animationDuration, curve: Curves.easeInOut);
//                 }
//               }
//             }));
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomLeft,
//       children: [
//         ClipRRect(
//           borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//           child: PageView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: widget.tourDetailMedia?.length,
//               controller: _pageController,
//               allowImplicitScrolling: true,
//               onPageChanged: (page)
//  {
//                 setState(() {
//                   activePage = page;
//                 });
//               },
//               itemBuilder: (context, index) {
//                 return CachedNetworkImage(
//                   imageUrl: widget.tourDetailMedia?[index].path ?? "",
//                   fit: BoxFit.cover,
//                   placeholder: (context, url) => const AspectRatio(
//                     aspectRatio: 1.6,
//                     child: BlurHash(
//                       hash: 'LKGSo.t:ERRO1mo#NMRi?HRNkEjE',
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   errorWidget: (context, url, error) => Image.asset(
//                     "packages/theme/assets/images/img_holder.png",
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               }),
//         ),
//         Container(
//           margin: const EdgeInsets.only(left: 16, bottom: 8, right: 16),
//           child: Row(
//             children: indicators(widget.tourDetailMedia?.length, activePage),
//           ),
//         ),
//         widget.tourDetailMedia?.isEmpty == true ||
//                 widget.tourDetailMedia == null
//             ? const SizedBox.shrink()
//             : Positioned(
//                 bottom: 16,
//                 right: 16,
//                 child: InkWell(
//                   onTap: () => {
//                     Navigator.of(context).pushNamed("/galleryImage",
//                         arguments: TourDetailListMediaModel(
//                             tourDetailMedia: widget.tourDetailMedia,
//                             tourDetail: widget.tourDetail))
//                   },
//                   child: Image.asset(
//                     "packages/theme/assets/images/tour/ic_get_galery.png",
//                   ),
//                 ))
//       ],
//     );
//   }

//   List<Widget> indicators(imagesLength, currentIndex) {
//     var maxIndicators = imagesLength > 20 ? 20 : imagesLength;
//     return List<Widget>.generate(maxIndicators, (index) {
//       return Container(
//         margin: const EdgeInsets.all(3),
//         width: 6,
//         height: 6,
//         decoration: BoxDecoration(
//             color: currentIndex == index
//                 ? HaloColors.backgroundColor
//                 : HaloColors.textDarkGray,
//             shape: BoxShape.circle),
//       );
//     });
//   }