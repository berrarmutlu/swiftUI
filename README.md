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
Tuple, sabit sayıda ve belirli türlerdeki değerleri tek bir yapıda saklar. Fonksiyonlardan birden fazla değer döndürmek için kullanılır.
Syntax: func functionName() -> (label1: Type1, label2: Type2, ...) {
    return (label1: value1, label2: value2, ...)
}

## Default Parameter Values (Varsayılan Parametre Değerleri)
Parametreye bir değer verilmezse kullanılacak otomatik değeri tanımlar.
Syntax: func functionName(paramName: Type = defaultValue) {
    // Fonksiyon gövdesi
}

## Handling Errors in Functions (Fonksiyonlarda Hata Yakalama)
1. Hata türünü tanımla  
2. `throws` ile hata veren fonksiyonu yaz  
3. `do-try-catch` ile hatayı yakala  

- `throws` fonksiyon hata fırlatabilir  
- `throw` belirli bir hatayı fırlatır  
- `try` hata fırlatabilecek fonksiyonları çağırırken zorunludur  

## Closures
Closure’lar, fonksiyon gibi çalışan ve değişkene/sabite atanabilen kod bloklarıdır.  
Syntax: let closureName = { (parametreler) -> donusTipi in
    // Closure gövdesi
}

## Trailing Closures
Eğer bir fonksiyonun son parametresi closure ise, parantezleri kapatıp closure’i dışarı yazabiliriz.

## Shorthand Syntax
Parametre isimleri yerine `$0, $1, ...` kullanılabilir.

## Structs
- Kendi özel veri tipimizi oluşturmak için kullanılır.  
- Örnekleri initializer ile oluşturulur, Swift otomatik olarak **memberwise initializer** sağlar.  
- Property değiştiren metotta `func` başına `mutating` gelir.  
- `Mutating` metot, struct’in property’sini değiştirebilir.

## Computed Properties (Hesaplanan Özellikler)
- Her erişildiğinde değerini hesaplayan property.  
- Depolanan değer yerine **hesaplama sonucu** döner.  

- **Get:** Property erişildiğinde çalışır ve değer döndürür.  
- **Set:** Property’e yeni değer atandığında çalışır.  
- `newValue` atanan değeri tutar.

## Property Observers (Özellik Gözlemleyiciler)
- Property’nin değeri değiştiğinde tetiklenen özel bloklar.  
- Computed property değil, **depolanan property** ile kullanılır.  

- **willSet:** Değer değişmeden önce çalışır. Yeni değere `newValue` ile erişilir.  
- **didSet:** Değer değiştikten sonra çalışır. Eski değere `oldValue` ile erişilir.

## Custom Initializers (Özel Başlatıcılar)
- Initializer, yeni bir struct örneğini kullanmaya hazırlayan özel fonksiyonlardır.  
- `init(...) { }` şeklinde yazılır, `func` kullanılmaz ve `return` yapılmaz.  
- Tüm property’ler başlangıç değerine sahip olmalı.  
- Kendi initializer’ımızı yazarak varsayılanı değiştirebiliriz.

## Access Control (Erişim Kontrolü)
- Veri güvenliğinin ve **encapsulation (kapsülleme)** sağlar.  

- **Private:** Yalnızca aynı struct/func içinde erişim.  
- **private(set):** Dışarıdan okunabilir, ama değiştirilemez.  
- **Fileprivate:** Aynı dosyada kullanılabilir.  
- **Public:** Her yerden erişilebilir.

## Static Properties ve Methods (Statik Özellikler ve Metodlar)
- `static` ile bir property veya method struct örneğine değil, struct’ın kendisine bağlı olur.  
- Kullanımı: `StructName.property` veya `StructName.method()`

## Classes
- **Inheritance (Kalıtım):** Class’lar başka class’lardan miras alabilir. (`override` ile method değiştirilebilir)  
- **Initializer:** Memberwise initializer yok, alt class `super.init` kullanmalı.  
- **Reference type:** Tüm kopyalar aynı veriyi paylaşır.  
- **Deinitializer:** Son referans silindiğinde çalışır.  
- **Mutating gerekmez:** Class içindeki `var` property’ler, class `let` olsa bile değiştirilebilir.

## Protocols
- Bir veri tipinin (struct, class, enum) hangi fonksiyonellikleri desteklemesi gerektiğini tanımlar.  
- Methodlar ve property’ler protocol’de tanımlanır, kod içermez.  
- Protocole uyan tipler, tüm method ve property’leri aynı isim, parametre ve tiplerle uygular.  
- Property tipleri:  
  - `get` (sadece okunabilir)  
  - `get set` (okunup yazılabilir)  
- Bir tip birden fazla protokole uyum sağlayabilir.

## Extensions
- Herhangi bir tipe (struct, class, enum) yeni fonksiyon, method ya da property ekler.  
- Mevcut tipin kodunda değişiklik yapılmaz.  
- `mutating` ile method, mevcut değeri değiştirebilir.
Syntax: extension TypeName {
    func methodName() -> ReturnType {
        // Method gövdesi
    }
    mutating func modifyingMethod() {
        // Değeri değiştiren method
    } 
    var computedProperty: Type {
        // Hesaplanan property
    }
}

## Protocol Extensions
- Bir protokolün tüm uyumlu tiplerine method ve property ekler.  
- Computed property veya default method implementasyonu eklemek için kullanılır.  
- Uyum sağlayan tipler, eklenen özellikleri otomatik alır veya kendi implementasyonlarını yapabilir.  

> **Not:**  
> - Protokol/arayüz: “Bu method olmalı” → sadece söz.  
> - Implementasyon: “Method nasıl çalışacak” → gerçek kod.

## Optionals
- Veri yokluğu durumunu kontrol eder, `nil` = değer yok.  
- Tüm veri tipleri optional olabilir: `Int?`, `String?`, `Bool?`, `enum`, `struct`, `class`.  
- Veri direkt kullanılamaz, **unwrap** edilmeli.  

### Optional Unwrap Yöntemleri
- `if let` / `guard let`  
- Nil coalescing (`??`) → varsayılan değer atama  
- Force unwrap (`!`) → nil ise crash olur  

### Guard ile Optional Unwrapping
- `if let` gibi ama ters çalışır.  
- Değer yoksa (`nil`) süslü parantez içindeki kod çalıştırılır.  
- `else` bloğunda `return`, `break`, `continue` veya `throw` kullanmak gerekir; başarısız durumda çıkış yapılır.

### Nil Coalescing Operator (`??`)
- Eğer değer `nil` ise sağ taraftaki varsayılan değeri kullanır.

### Optional Chaining (`?.`)
- İç içe optional değerleri okumak için kullanılır.  
- Nil değilse kod çalışmaya devam eder, nil ise zincir girilir ve nil döner.

### Optional Try
- `try?` → throw (hata fırlatabilen) bir fonksiyon çağrıldığında kullanılır.  
- Başarılı ise optional, hata verdiyse nil döner.  
- Hata türüyle ilgilenmek yerine sadece değer dönsün istiyorsak kullanılır.

### Try Kullanımları
- `try` → normal kullanım, hata varsa `do-catch` kullanılır.  
- `try!` → “asla hata fırlatmaz” diyorsak kullanılır; hata olursa program crash olur.  
- `try?` → hata fırlatılırsa nil, yoksa değer döner.
