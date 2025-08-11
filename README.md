# Day 11 Swift Notları - Structs 2

## Access Control  
- `private`: Yapının dışındaki hiçbir şeyin bunu kullanmasına izin vermez.  
- `fileprivate`: Mevcut dosyanın dışındaki hiçbir şeyin bunu kullanmasına izin vermez.  
- `public`: Herkesin, her yerde bunu kullanmasına izin verir.  
- Access control, dışarıdan yanlışlıkla veriyle oynanmasını engeller.

## private(set)  
- Fonksiyon dışından bir property'si değiştirilemez ama okunabilir.  
- Böylece veri güvenliği sağlanır.

## mutating  
- Struct içindeki fonksiyonların property değerlerini değiştirmesine izin verir.

## Static ve Instance  
- Statik koddan statik olmayan koda erişilemez, ama statik olmayan koddan statik koda erişilebilir.  
- `static` varsa, bu struct (veya class) için **tek bir kopya** vardır.  
- `var` ise, her struct örneği (instance) için **ayrı bir kopya** vardır.  
- `static` genellikle:  
  - Ortak sabitler (örnek: `AppData.version`)  
  - Örnek veriler (örnek: `Employee.example`)  
  - Sayaçlar, durum takibi (örnek: `School.studentCount`)  
  - Sabit fonksiyonlar (örnek: `AppTheme.getColor()`) için kullanılır.

## self ve Self  
- `self`: Yapının geçerli örneğini ifade eder.  
- `Self`: Geçerli türü ifade eder.  
- `self` ve `Self` farklı şeylerdir.

## description  
- Bir nesnenin kendini anlatan, okunabilir metin hali.  
- Mesela bir struct veya class’ın içeriğini string olarak döndüren özelliktir.
