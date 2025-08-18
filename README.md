# Day15 - Swift Review

## Constants and Variables
- `var` → değişkenler için kullanılır.
- `let` → sabitler için kullanılır.
- `print()` → konsola yazdırmak veya veri basmak için kullanılır.

## Strings
- Tırnak işareti ile başlar ve biter.
- `.count` → stringin kaç harf içerdiğini hesaplar.
- `.hasPrefix()` → belirli bir kelime/hece/harfle başlayıp başlamadığını kontrol eder (true/false döner).
- `.hasSuffix()` → belirli bir kelime/hece/harfle bitip bitmediğini kontrol eder (true/false döner).
- **String interpolation** → string içine değişken, sabit veya hesaplanan ifadeleri yerleştirme yöntemi: `\(ifade)`

## Integers
- Tam sayılar `Int` türü ile depolanır.
- `.isMultiple(of:)` → bir sayının başka bir sayının katı olup olmadığını kontrol eder.
- `.random` → belirtilen aralıkta rastgele sayı üretir.

## Decimals
- Ondalıklı sayılar `Double` türü ile ifade edilir.

## Booleans
- `Bool` → true/false değerlerini depolar.
- `.toggle()` → değerini tersine çevirir.

## Arrays
- Aynı türden birden fazla veriyi saklar, index sıfırdan başlar.
- `.append()` → array’e öğe ekler.
- `.count` → array’deki öğe sayısını okur.
- `.remove(at:)` → array’den öğe siler.
- `.contains()` → array’in belirli bir öğeyi içerip içermediğini kontrol eder.

## Dictionaries
- Anahtar (key) - değer (value) saklayan koleksiyon.
- Aynı anahtara sahip iki değer olamaz.
- Anahtar ile değere erişilir, default değer verilebilir.

## Sets
- Array gibi ama yinelenen öğelere izin vermez ve öğeleri belirli sırada saklamaz.
- `.insert()` → sete öğe ekler.
- `.contains()` → belirli öğeyi içerip içermediğini kontrol eder.

## Enums
- İsimlendirilmiş sabit değerler kümesidir.
- `case` ile değerler tanımlanır.

## Type Annotations
- Değişken veya sabitler için belirli tür atamak için kullanılır.
- Syntax: `var/let name: Type = value`

## Conditions
- `if/else` / `else if`
- `&&` → iki koşulu birleştirir, her ikisi doğru olmalı.
- `||` → iki koşuldan biri doğruysa sonuç doğru.

## Switch Statements
- `switch/case` → bir değer birden fazla koşula göre kontrol edilir.
- Tüm olası durumlar ele alınmalıdır; `default` case eklenir.

## Ternary Conditional Operator
- Koşulu kontrol edip iki değerden birini döndürür.
- Syntax: `condition ? valueIfTrue : valueIfFalse`

## Loops
- `for` → kod bloğunu belirli sayıda veya koleksiyonun her elemanı için çalıştırır.
- `while` → koşul yanlış olana kadar çalışır.
- `break` → döngüden çıkar.

## Functions
- Belirli bir işi yapmak için tanımlanmış kod bloklarıdır.
- Syntax: `func functionName(parameterName: Type) -> ReturnType { /* kod bloğu */ }`

## Parametre İsimleri
- Fonksiyon çağrısında parametre adı gizlenebilir. `_` kullanılırsa fonksiyon çağrılırken parametre adı yazılmaz veya dışarıda ve içinde farklı isim kullanılabilir.
- `externalName` → fonksiyon çağrısında görünen ad
- `internalName` → fonksiyon içinde kullanılan ad

## Returning Multiple Values (Tuple)
- Tuple sabit sayıda ve belirli türlerdeki değerleri tek yapıda saklar.  
- Fonksiyonlardan birden fazla değer döndürmek için kullanılır.  
- Syntax:  
```swift
func functionName() -> (label1: Type1, label2: Type2, ...) {
    (label1: value1, label2: value2, ...)
}

## Default Parameter Values (Varsayılan Parametre Değerleri)
- Parametreye bir değer verilmezse kullanılacak otomatik değer tanımlar.  
- Syntax:  
```swift
func functionName(paramName: Type = defaultValue) { ... }

## Handling Errors in Functions (Fonksiyonlarda Hata Yakalama)
1. Hata türünü tanımla.  
2. `throws` ile hata veren fonksiyonu yaz.  
3. `do-try-catch` ile hatayı yakala.  

- `throws` → Fonksiyon hata fırlatabilir.  
- `throw` → Belirli bir hatayı fırlatır.  
- `try` → Hata fırlatabilecek fonksiyonları çağırırken zorunludur.

## Closures
- Fonksiyon gibi çalışan, değişkene veya sabite atanabilen kod bloklarıdır.  
- Syntax:  
```swift
let closureName = { (parametreler) -> DonusTipi in
    // Closure gövdesi
}

## Trailing Closure ve Shorthand Syntax
- **Trailing closure:** Eğer bir fonksiyonun son parametresi closure ise, parantezleri kapatıp closure’i dışarı yazabiliriz.
- **Shorthand syntax:** Parametre isimleri yerine `$0`, `$1`, … gibi otomatik isimler kullanılabilir.

## Structs
- Kendi özel veri tipimizi oluşturmak için kullanılır.  
- Örnekleri initializer ile oluşturulur; Swift otomatik olarak **memberwise initializer** sağlar.  
- Property değiştiren metotta `func` başına **mutating** gelir. Mutating metot, struct’ın property’sini değiştirebilir.

## Computed Properties (Hesaplanan Özellikler)
- Her erişildiğinde değerini hesaplayan property’lerdir.  
- Depolanan değer yerine hesaplama sonucu döner.  
- **get** → property erişildiğinde çalışır ve değer döner.  
- **set** → property’e yeni değer atandığında çalışır. `newValue` atanan değeri tutar.  

## Property Observers (Özellik Gözlemleyiciler)
- Property’nin değeri değiştiğinde tetiklenen özel bloklardır.  
- **Computed property** ile değil, **depolanan property** ile kullanılır.  
- **willSet** → değer değişmeden önce çalışır; yeni değere `newValue` ile erişilir.  
- **didSet** → değer değiştikten sonra çalışır; eski değere `oldValue` ile erişilir.

## Custom Initializers (Özel Başlatıcılar)
- Struct örneğini kullanmaya hazırlayan özel fonksiyonlardır.  
- Syntax: `init(...) { }` → `func` kullanılmaz ve `return` yapılmaz.  
- Tüm property’ler başlangıç değerine sahip olmalıdır.  
- Kendi initializer’ımızı yazarak varsayılanı değiştirebiliriz.  

## Access Control (Erişim Kontrolü)
- Veri güvenliği ve encapsulation (kapsülleme) sağlar.  
- **private** → yalnızca aynı struct/fonksiyon içinde erişim.  
- **private(set)** → dışarıdan okunabilir, değiştirilemez.  
- **fileprivate** → aynı dosyada erişilebilir.  
- **public** → her yerden erişilebilir.

## Static Properties ve Methods (Statik Özellikler ve Metodlar)
- `static` ile tanımlanan property veya method, struct örneğine değil, struct’ın kendisine bağlı olur.  
- Kullanım: `StructName.property` veya `StructName.method()`.  

## Classes
- **Inheritance (Kalıtım)** → Classlar başka classlardan miras alabilir, `override` ile method değiştirilebilir.  
- **Initializer** → Memberwise initializer yoktur; alt class `super.init` kullanmalıdır.  
- **Reference type** → Tüm kopyalar aynı veriyi paylaşır.  
- **Deinitializer** → Son referans silindiğinde çalışır.  
- **Mutating gerekmez** → Class içindeki `var` propertyler, class `let` olsa bile değiştirilebilir.

## Protocols
- Bir veri tipinin (struct, class, enum) hangi fonksiyonellikleri desteklemesi gerektiğini tanımlar.  
- Methodlar ve propertyler protokolde tanımlanır; kod içermez.  
- Protokole uyan tipler, tüm method ve propertyleri aynı isim, parametre ve tiplerle uygular.  
- **Property tipleri:**  
  - `get` → sadece okunabilir  
  - `get set` → okunup yazılabilir  
- Bir tip birden fazla protokole uyum sağlayabilir.

## Extensions
- Herhangi bir tipe (struct, class, enum) yeni fonksiyon, method veya property ekler.  
- Mevcut tipin kodunda değişiklik yapılmaz.  
- `mutating` ile method, mevcut değeri değiştirebilir.  
- **Syntax:**  
```swift
extension TypeName {
    func methodName() -> ReturnType {
        // kod
    }
    mutating func modifyingMethod() {
        // kod
    } 
    var computedProperty: Type {
        // hesaplanan değer
    }
}

## Protocol Extensions
- Bir protokolün tüm uyumlu tiplerine method ve property ekler.  
- Computed property veya default method implementasyonu eklemek için kullanılır.  
- Uyum sağlayan tipler, eklenen özellikleri otomatik alır veya kendi implementasyonlarını yazabilir.  
- Özet:  
  - Protokol/arayüz → “Bu method olmalı” (söz).  
  - Implementasyon → “Method nasıl çalışacak” (gerçek kod).

## Optionals
Veri yokluğu durumunu kontrol eder, `nil` = değer yok.  
Tüm veri tipleri optional olabilir: `Int?`, `String?`, `Bool?`, enum, struct, class.  
Optional veri direkt kullanılamaz, unwrap edilmelidir.

### Optional Unwrap Yöntemleri
- **if let**: Optional içindeki değeri güvenli şekilde çıkarmak için kullanılır.  
- **guard let**: if let gibi çalışır ama tam tersi; değer yoksa else bloğu çalışır ve return/break/continue/throw ile çıkış gerekir.  
- **Nil Coalescing Operator (??)**: Optional nil ise sağ taraftaki varsayılan değeri kullanır.  
- **Force unwrap (!)**: Kesinlikle veri var diyorsak kullanılır, nil ise program crash olur.

### Optional Chaining (?.)
Optional değerleri zincirleme olarak güvenli bir şekilde okumamızı sağlar.  
Eğer değer nil değilse kod çalışmaya devam eder, nil ise zincir durur ve nil döner.

### Optional Try
- **try?**: Hata fırlatabilen fonksiyon çağrıldığında, başarılıysa optional içinde değer döner, hata verirse nil döner.  
- **try**: Normal kullanım, hata varsa do-catch ile yakalanır.  
- **try!**: Hata kesinlikle olmayacaksa kullanılır, hata olursa program crash olur.
