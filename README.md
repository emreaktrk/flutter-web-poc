## Mevcut Projeye Web Desteği Ekleme
Proje'nin kök dizininde `flutter create --platforms=web,macos` çalıştırabilirsiniz.

## Adaptive ve Responsive UI
- Adaptive
- Responsive

## Cross-Origin Resource Sharing (CORS)
Bir web sayfası üzerindeki bazı kaynakların (örneğin font dosyaları), kaynağın sunulduğu alan adının dışındaki bir alan adından istenebilmesine izin veren bir mekanizmadır.

- CORS güvenlik ile ilgili değildir, içerik sahipliğinin korunması ile ilgilidir. 
- Saldırganların Aynı Kök Politikası'na (SOP) uyması beklenmemelidir. 
- CORS pek çok tarayıcı üzerinden kolayca devre dışı bırakılabilmektedir.
- Header'a `Access-Control-Allow-Origin` eklenmelidir.
- Kapatmaya çalışmayalım. Kullanıcılarınızın bu özelliği browser'ında kapatmasını beklememelisiniz.

## GetX
- Hızlı ve güçlü bir çözümdür. Yüksek performanslı state management, dependency injection ve route management işlerinizi hızlı ve kolayca yapmamızı sağlar.
- Productivity'i artırtır.

## PWA
- Progressive web app desteği olduğu için offline olarak da kullanılabilir ama PWA ile ilgili güvenlik kurallarına dikkat etmek gerekiyor.

## RTL
- Right to Left text desteği bulunmaktadır ama henüz tamamlanmamıştır. 

## Scrolling Behaviours
- Flutter 2.0 ile Scrollbar desteği gelmiştir ama trackpad ileride gelicektir.

## Performance
- Loading süresinin kısaltılması için geliştirmeler yapılıyor.

## In Development
- Camera support for Web (PR Waiting)

## SEO
- Third party library ile yapılabilir.

## Captcha
- HtmlViewer Widget ile yapılabilir.
- *[Third party library](https://github.com/flutter/flutter/tree/master/packages/integration_test#integration_test)* ile automated test'ler yapılabiliyor.

## Google Ads
- *[Google Mobile Ads](https://pub.dev/packages/google_mobile_ads)* in Beta.

## TEST
- *[Google reCaptcha V3](https://pub.dev/packages/g_recaptcha_v3)* kullanılabilir.

## Export
- `flutter build web` komutu ile export alınabilir.

```
/build/web
  assets
    AssetManifest.json
    FontManifest.json
    NOTICES
    fonts
      MaterialIcons-Regular.ttf
      <other font files>
    <image files>
  index.html
  main.dart.js
  main.dart.js.map
```
- `<iframe src="URL"></iframe>` kullanılarak embed edilebilir.
- Progressive Web App 1.20 versiyonun itibaren var ama hala geliştirme sürecindedir.

## Showcase
- *[Gallery](https://gallery.flutter.dev/#/)*
- *[Dice](https://z.flutter.gallery/examples/#/dice)*
- *[Plasma](https://flutterplasma.dev/e)*
- *[Folio](https://flutter.gskinner.com/folio/#g-download)*
- *[Charts](https://flutter.github.io/samples/web/charts/#/)*
- *[Dataviz](https://flutter.github.io/samples/web/github_dataviz/)*
- *[Particle Background](https://flutter.github.io/samples/web/particle_background/#/)*
