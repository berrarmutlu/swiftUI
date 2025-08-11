# Day 12 Swift Notları - Classes

## Class Yapısının Özellikleri  
- **Miras (Inheritance):** Bir sınıf başka bir sınıfın özelliklerini ve metotlarını alabilir. İstersen override edebilirsin.  
- **Memberwise initializer yok:** Struct’larda otomatik var, classlarda yok. Kendi `init` metodunu yazmalısın veya tüm property’lere varsayılan değer vermelisin.  
- **Referans tipi davranışı:** Sınıf örnekleri kopyalandığında aynı veriyi paylaşırlar. Birinde değişiklik diğerini etkiler.  
- **Struct vs Class kopya farkı:** Struct kopyaları bağımsızdır, class kopyaları aynı veriye işaret eder.  
- **Deinitializer (deinit):** Son kopya yok edilirken otomatik çağrılır, manuel çağrı yoktur. Structlarda deinit yoktur.  
- **let ile sabit referans:** Class’ı `let` ile tanımlasan bile içindeki `var` property’leri değiştirilebilir.  
- **let ile struct:** `let` ile tanımlanan struct’ın `var` property’leri bile değiştirilemez.

## Initializer ve Inheritance  
- Structlarda otomatik init güvenlidir çünkü miras yoktur.  
- Classlarda miras olduğu için otomatik init yoktur.  
- Alt sınıf init’i yoksa üst sınıfın init’leri otomatik devralınır.  
- Üst sınıfın init’i yoksa ve alt sınıf kendi init’ini yazarsa, üst sınıfın init’ini `super.init` ile çağırmak zorundasın.  
- `super.init`, üst sınıfın initializer’ını çağırır.

## Struct ve Class Arasındaki Temel Farklar  
- **Struct:** Değer tipi, kopyalandığında tam kopya oluşturur, kopyalar bağımsızdır.  
- **Class:** Referans tipi, kopyalandığında aynı veri kaynağına referans olur, kopyalar birbirini etkiler.

## Deinitializer (deinit)  
- Nesne yok edildiğinde çağrılır, parametre almaz, dönüş değeri yoktur.  
- Elle çağrılamaz, sistem otomatik çalıştırır.  
- Struct’larda yoktur.

## Scope  
- “Bilginin erişilebilir olduğu bağlam” demektir.  
- Değişkenlerin, fonksiyonların nerede kullanılabileceğini sınırlar.

## Class Nesneleri ve Referansları  
- Class nesnesi kendisi değil, hafızadaki yerini gösteren işaretçidir.  
- Class nesneleri kopyalandığında işaretçiler kopyalanır, verinin kendisi değil.  
- Referans ve isim ilişkileri:  
  1. Constant işaretçi, constant isim → Aynı kullanıcı ve isim.  
  2. Constant işaretçi, değişken isim → Aynı kullanıcı, isim değişebilir.  
  3. Değişken işaretçi, constant isim → İşaretçi farklı kullanıcılar gösterebilir, isim sabit.  
  4. Değişken işaretçi, değişken isim → İşaretçi ve isim değişebilir.

## Mutability (Değiştirilebilirlik)  
- Classlarda `mutating` anahtar kelimesi gerekmez.  
- Değiştirilebilirlik, property’nin `var` veya `let` olmasına bağlıdır.  
- **Class:**  
  - Variable (değişken) class’lar, `var` property’leri değiştirebilir.  
  - Constant (sabit) class’lar da `var` property’leri değiştirebilir.  
- **Struct:**  
  - Variable struct’lar `var` property’leri değiştirebilir.  
  - Constant struct’lar `var` property’leri değiştiremez.  

## Neden Fark Var?  
- Class, hafızadaki veriye işaret eden referanslar içerir.  
- Struct, tamamen kopyalanan ve yeniden yaratılan değerlerdir.  
- Bu yüzden mutability davranışları farklıdır.
