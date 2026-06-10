import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;
  bool _adRequested = false;

  @override
  void initState() {
    super.initState();
    // _loadAd() removed from here
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_adRequested) {
      _adRequested = true;
      _loadAd();
    }
  }

  Future<void> _loadAd() async {
    final size = await AdSize.getLargeAnchoredAdaptiveBannerAdSize(
      MediaQuery.sizeOf(context).width.truncate(),
    );

    if (size == null) return;

    final bannerAd = BannerAd(
      adUnitId: _getBannerAdUnitId(),
      request: const AdRequest(),
      size: size,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) return;
          setState(() {
            _bannerAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('Banner failed to load: $error');
          ad.dispose();
        },
        onAdOpened: (ad) => debugPrint('Ad opened'),
        onAdClosed: (ad) => debugPrint('Ad closed'),
        onAdImpression: (ad) => debugPrint('Ad impression'),
        onAdClicked: (ad) => debugPrint('Ad clicked'),
      ),
    );

    await bannerAd.load();
  }

  // TODO: ADD REAL AD UNIT ID FROM ADMOB
  String _getBannerAdUnitId() {
    return 'ca-app-pub-3940256099942544/9214589741';
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isLoaded || _bannerAd == null) {
      return const SizedBox.shrink();
    }

    return SafeArea(
      child: SizedBox(
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      ),
    );
  }
}
