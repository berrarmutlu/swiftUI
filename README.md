# Day 10 Swift Notları - Structs 1

## Struct Tanımı  
- Veri yapısı tanımlar.  
- Varsayılan olarak structlar değiştirilemez (immutable). İçinde değişken olsa bile.  
- `mutating func` struct içinde kendini değiştirmeye izin verir.

## Tuple ve Struct  
- Tuple: İsimsiz, geçici kutu.  
- Struct: İsmi olan, kalıcı kutu.

## Function ve Method  
- **Function:** Genel, her yerden çağrılabilir.  
- **Method:** Bir yapıya (struct, class, enum) bağlıdır.  
- Ortak özellikler:  
  - İkisi de `func` ile tanımlanır.  
  - Parametre alabilirler.  
  - Değer döndürebilirler.  
  - Aynı mantıkla çağrılırlar.

## Stored ve Computed Property  
- **Stored property:** Veri tutar.  
- **Computed property:** Değer hesaplar.  
- **Getter:** Değeri okuyan kod.  
- **Setter:** Değeri yazan kod.  
- **didSet:** Özellik değiştiğinde çalışır.  
- **willSet:** Özellik değişmeden önce çalışır.

## Initializer  
- Yapının başlangıç değerlerini vermek için özel fonksiyon.  
- **Memberwise initializer:** Struct içindeki tüm değişkenleri parametre olarak alan ve Swift’in otomatik verdiği `init()` fonksiyonu.

## Class ve Struct Arasındaki Farklar  
- Structlarda Swift otomatik memberwise initializer verir, classlarda `init` fonksiyonunu biz yazmak zorundayız.  
- Classlar kalıtımı destekler, structlar desteklemez. Classlarda `super.init` ile üst sınıf initializer’ı çağrılabilir.  
- Classlarda nesne bellekte silinirken `deinit` fonksiyonu çalışır, structlarda böyle bir şey yoktur.

## `self` Kullanımı  
- `init()` içinde genelde `self` kullanmak gerekir, çünkü parametre adı ile property aynıysa karışıklığı önlemek için kullanılır.  
- Normal fonksiyon içinde çoğunlukla `self` kullanmaya gerek yoktur, Swift zaten ayırt eder.  
- Closure içinde özellikle class yapılarında `self` kullanmak zorunludur; bu, bellek güvenliği için Swift’in şart koştuğu bir durumdur.
