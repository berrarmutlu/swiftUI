# Day 8 Swift Notları - Fonksiyonlar ve Hata Yönetimi

## `throws`  
- Fonksiyonun hata oluşturabileceğini belirtir.  
- `throw` kullanınca fonksiyon hemen biter, sonrası çalışmaz.  
- Hata olmazsa normal değer döner.

## Hata Oluşturabilecek Fonksiyon Çağrısı  
- `try` ile çağrılır.

## `do-catch`  
- Hata olabilecek kod `do` bloğunda yazılır.  
- Hata olursa `catch` bloğunda yakalanır.

### Örnek

```swift
do {
    try someRiskyWork()
} catch {
    print("Hata burada yakalanır")
}
