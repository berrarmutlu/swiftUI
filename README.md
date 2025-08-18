# Day 14 Swift Notları - Optionals

## Optionals  
- Bir veri olabilir veya olmayabilir; tipin sonuna `?` konur.  
- Örnek: `String?` → içinde bir string olabilir veya `nil` olabilir.  
- Her veri tipi optional olabilir: `Int`, `Double`, `Bool`, enum, struct, class örnekleri vb.

## Unwrapping  
- **unwrap:** Optional içindeki değeri güvenli şekilde çıkarmak.  
- Swift, optional’ı unwrap etmeden kullanmamıza izin vermez.  

### if let  
- Optional değeri güvenli şekilde alır ve unwrap eder.  
- Optional başarıyla unwrap edilirse, if bloğu çalışır.  
- `else` ile birlikte de kullanılabilir.

### guard let  
- Optional değeri kontrol eder; yoksa `else` bloğu çalışır.  
- Early return (erken dönüş) sağlar: fonksiyon başında tüm girişler kontrol edilir.  
- Kontrollü unwrap başarılı olursa, değer guard bloğundan sonra kullanılabilir.  

**Özet:**  
- Sadece değer varsa işlem → `if let`  
- Koşulları doğrula, yanlışsa çık → `guard let`

## Nil Coalescing Operator (??)  
- Optional içindeki değeri alır; `nil` ise varsayılan değeri kullanır.  

## Optional Chaining (?.)  
- Optional bir değer varsa açıp işlem yapmamızı sağlar.  

## Force Unwrap (!)  
- Kesinlikle veri olduğunu biliyorsan kullanılır.  

## Optional Try (`try?`)  
- Fonksiyon hata fırlatırsa `nil`, hata fırlatmazsa optional değer döner.  
- Kullanım durumları:  
  1. `guard let` ile birlikte, nil ise çıkmak için.  
  2. Nil coalescing ile varsayılan değer kullanmak için.  
  3. Hata ile ilgilenmek istemediğin durumlarda (log, analytics).  

## Non-Optional vs Optional  
- Non-optional veri her zaman değer içerir: `var a: Int = 0` → a kesinlikle 0.  
- Optional veri boş olabilir: `var a: Int? = nil` → a’nın değeri yok.  

### Örnek Farklar  
- Nil olan optional Int ≠ 0 olan non-optional Int  
  - `var a: Int? = nil` → tamamen boş  
  - `var b: Int = 0` → değer var, sadece 0  
- Nil olan optional String ≠ boş olan non-optional String  
  - `var name: String? = nil` → içinde hiçbir string yok  
  - `var name2: String = ""` → değeri var, boş string  
- Nil olan optional Array ≠ öğesi olmayan non-optional Array  
  - `var numbers: [Int]? = nil` → dizisi yok  
  - `var numbers2: [Int] = []` → dizisi var ama öğesi yok  

## Özet Kavramlar  
- `nil` → veri yok  
- Boş sayı, boş string, boş dizi → veri var ama içeriği boş  
- Non-optional bekleyen yere optional gönderilemez; önce unwrap edilmeli  
- Optional unwrap ederken aynı isimle sabit oluşturabiliriz.
