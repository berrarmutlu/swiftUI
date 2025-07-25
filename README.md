# Day 6 - Swift Notları

## Döngüler (Loops)

### `for` Döngüsü
- Bir işi belirli sayıda veya bir koleksiyon üzerinde **otomatik olarak tekrar** ettirir.
- Genellikle aralık (`range`) veya dizi gibi sınırları belli verilerle kullanılır.

### `while` Döngüsü
- Belirtilen koşul **yanlış olana kadar** kodu tekrar tekrar çalıştırır.
- Özel bir koşula bağlı tekrarlamalarda tercih edilir.

### `random(in:)`
- Belirtilen aralıkta **rastgele sayı** üretir.
- Örnek: `Int.random(in: 1...10)`

### Döngü Kontrolü: `continue` ve `break`
- `continue`: O anki döngü turunu **atlar**, bir sonraki tura geçer.
- `break`: Döngüyü tamamen **sonlandırır**, kalan turları atlar.

### İç İçe Döngüler ve Label Kullanımı
- İç içe döngülerde dış döngüyü veya belirli bir döngüyü kırmak için **label** kullanılır.
- Label olmadan iç içe döngülerden tamamen çıkmak mümkün değildir.

```swift
outerLoop: for i in 1...3 {
    for j in 1...3 {
        if i == 2 && j == 2 {
            break outerLoop  // Dış döngüyü kırar
        }
        print("\(i), \(j)")
    }
}
