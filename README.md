# Day 2 Swift Notları

## Boolean (true / false)  
- `Bool` veri tipi sadece `true` (doğru) veya `false` (yanlış) değerlerini alabilir.  
- Mantıksal işlemler (`==`, `!=`, `>`, `<`, `&&`, `||`) ile kullanılır.

## toggle()  
- Bir `Bool` değeri tersine çevirir.  
  - `true` → `false`  
  - `false` → `true`

```swift
var isOn = true
isOn.toggle() // Artık false
