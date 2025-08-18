# Day 13 Swift Notları - Protocols & Extensions

## Protokoller  
- Protokoller, nasıl yapılacağını değil, **ne yapılması gerektiğini** tanımlar.  
- Fonksiyonlar ve yapılar belirli işlevleri garanti altına alır.  
- Farklı tipler (ör: Car, Bicycle) ortak bir arabirimle kullanılabilir.  
- **Conforming (uyum sağlama):** Bir türün protokoldeki tüm zorunlulukları eksiksiz uygulaması.

## trimmingCharacters(in:)  
- String’in başından veya sonundan belirli karakterleri kaldırır (harf, rakam, boşluk, yeni satır).  
- Boşluk: Boşluk karakteri, tab vb.  
- Yeni satırlar: Satır sonları, farklı şekillerde yapılabilir; metod tüm varyasyonları otomatik temizler.

## Extension  
1. Swift’in tiplerine veya kendi yazdıklarına yeni özellik/metod ekler.  
2. Extension metodları, o tipe aitmiş gibi çalışır (`quote.trimmed()`). Xcode otomatik tamamlama destekler.  
3. Yeni özellikler eklenebilir ama sadece **computed property** olabilir; veri saklayan property eklenemez.  
4. Hem yeni metodlar yazabilir, hem tipe ait özelliklere, hatta private üyelerine erişebilirsin.  
5. Struct içine kendi initializer yazarsan, Swift’in otomatik memberwise initializer’ı iptal olur. Ama initializer’ı extension içine yazarsan, otomatik memberwise’ı bozmadan ekleyebilirsin.  
- Extension’lar, kodu düzenli ve yönetilebilir tutmak için de kullanılır.

## Protokol Extension  
- Protokole varsayılan metodlar eklenebilir; protokole uyan tüm tipler otomatik kullanabilir.  
- Ortak davranışları protokol extension’ına koyarsın; tipler ister kendi özel versiyonunu yazabilir, ister default olanı kullanır.

## Özet  
- Protokoller, kod için sözleşme gibidir: gerekli fonksiyon ve metodları belirler, tipler bunları uygulamak zorundadır.  
- **Opak (opaque) dönüş tipleri:** Bazı bilgileri gizler, esneklik sağlar, devasa dönüş tipleri yazma zorunluluğunu kaldırır.  
- **Extension:** Tiplere metod veya computed property eklemeyi sağlar.  
- **Protokol extension:** Birden fazla tipe aynı anda işlevsellik ekler; o protokole uyan tüm tipler bu özelliklere erişebilir.
