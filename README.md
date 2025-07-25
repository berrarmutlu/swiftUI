# Day 4 - Swift Notları

## Veri Türleri (Type Annotations)

- `String`: Metin tutar.  
- `Int`: Tam sayıları tutar.  
- `Double`: Ondalıklı sayıları tutar.  
- `Bool`: `true` veya `false` değerlerini tutar.  
- `Array`: Sıralı birçok değeri tutar.  
  Örn: `[String]`  
- `Dictionary`: Anahtar-değer şeklinde birçok veriyi tutar.  
  Örn: `[String: Int]`  
- `Set`: Tekrarsız birçok farklı değeri tutar, içerik kontrolüne göre optimize edilmiştir.  
  Örn: `Set<String>`

## Tür Belirtme ve Başlangıç Değeri

- Boş bir array oluştururken Swift’e ne tür değerler tutacağını belirtmek gerekir.  
  Örn: `var names = [String]()`
- Swift, başlangıç değeri atanmazsa bir değişkenin türünü kendi başına tahmin edemez.
- Sabitlerin (`let`) ve değişkenlerin (`var`) veri türleri **her zaman bilinmelidir**.
- Tip uyumsuzluğu (örneğin `String` ile `Int`’i karşılaştırmak gibi) olduğunda **kod derlenmez**.
