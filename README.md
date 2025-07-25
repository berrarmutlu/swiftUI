# Day 5 - Swift Notları

## Koşullar (Conditions)

### `if`, `else if`, `else`
- `if`: Bir koşulu kontrol eder, doğruysa kodu çalıştırır.
- `else if`: Önceki koşullar sağlanmazsa başka bir durumu kontrol eder.
- `else`: Hiçbir koşul sağlanmazsa çalışır.
- `.isEmpty`: Kontrol edilen şey boşsa `true` döndürür. Bu bir `Bool` (true/false) değerdir.

### && ve ||
- `&&`: Ve – Tüm koşullar **doğruysa** çalışır.
- `||`: Veya – En az bir koşul **doğruysa** çalışır.
- **Öncelik sırası:** `&&` her zaman `||`'den önce değerlendirilir.
- Karmaşık ifadelerde **parantez** kullanmak okunabilirlik ve doğruluk açısından önemlidir.

### `switch` - `case`
- Belirli bir değere göre farklı işlemler yapmamıza olanak tanır.
- `if` yerine, aynı değişkeni birçok farklı koşulla karşılaştırıyorsak `switch` daha okunabilirdir.
- `fallthrough`: Normalde bir `case` çalıştıktan sonra `switch` durur, ancak `fallthrough` ile bir sonraki `case`'e geçilebilir (nadiren kullanılır).

### Ternary Conditional Operator
- Kısa if-else yazımıdır.
- Söz dizimi: `koşul ? doğruysa_bu : yanlışsa_bu`
- Örnek:
  ```swift
  let score = 90
  let result = score >= 60 ? "Geçti" : "Kaldı"
