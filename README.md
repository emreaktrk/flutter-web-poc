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
