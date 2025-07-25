# Day 3 - Swift Notları

## 📚 Array (Dizi)

- Dizi bir değişkense (`var`) oluşturulduktan sonra değiştirilebilir.
- Yeni öğe eklemek için `.append()` kullanılır.
- `Array<String>` yerine `[String]` yazılabilir.
- `.remove(at:)`: Belirli bir öğeyi siler.
- `.removeAll()`: Tüm öğeleri siler.
- `.contains()`: Belirli bir öğenin dizide olup olmadığını kontrol eder.
- `.sorted()`: Diziyi alfabetik olarak sıralar (orijinal dizi değişmez).
- `.reversed()`: Diziyi tersine çevirir (orijinal dizi değişmez).

## 📘 Dictionary (Sözlük)

- Veriler `anahtar:değer` şeklinde saklanır.
- Yeni veri eklemek için bir **anahtar** belirtilmesi gerekir.
- `.count`: Sözlükteki öğe sayısını verir.
- `.removeAll()`: Tüm öğeleri siler.

## 📗 Set (Küme)

- Array’e benzer şekilde oluşturulur.
- Tekrar eden verileri otomatik olarak kaldırır.
- Öğelerin sırasını önemsemez; sıralama değişebilir.
- Yeni öğe eklemek için `.insert()` kullanılır.  
  (`.append()` kullanılmaz çünkü set sırasızdır.)
- Set sırasızdır ve kopya içeremez;  
  array sıralıdır ve kopya içerebilir.

## 🧩 Enum

- Belirli seçenekleri gruplamak için kullanılır.
- Kodun daha okunabilir ve anlamlı olmasını sağlar.
