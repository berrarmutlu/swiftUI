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
**Syntax:**
```swift
func functionName() -> (label1: Type1, label2: Type2, ...) {
    return (label1: value1, label2: value2, ...)
}

