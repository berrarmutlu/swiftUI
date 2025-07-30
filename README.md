# Day 9 Swift Notları - Closures

## Fonksiyonun Kopyalanması  
- Fonksiyonu kopyalarken parantez kullanılmaz.  
  `var greetCopy = greetUser` ✅  
  `var greetCopy = greetUser()` ❌  
- Fonksiyonun kendisi bir değişken veya sabite atanabilir.

## Closure Tanımı  
- Closure, fonksiyonun yaptığı işi doğrudan bir değişkene atamaktır.  
- `{ }` süslü parantezler içinde yazılır.  
- Parametreler ve dönüş tipi bu parantezlerin içinde tanımlanır.  
- `in` anahtar kelimesi, parametre ve dönüş tipi bildirimini sonlandırır.  
- Parametresiz closure tanımlamak için `()` kullanılır.

## map() Fonksiyonu  
- Her öğeyi belirlenen kuralla dönüştürüp yeni bir dizi döndürür.  
- Dönen tür, orijinal türden farklı olabilir.

## filter() Fonksiyonu  
- Dizi içindeki öğeleri belirli bir koşula göre filtreler.  
- Koşulu sağlayan öğelerle yeni bir dizi döner.

## sorted() Fonksiyonu  
- Dizi öğelerini küçükten büyüğe (veya istediğimiz sıraya göre) sıralar.  
- Varsayılan olarak artan sırada sıralama yapar.
  
## Trailing Closure  
- Fonksiyonun son parametresi closure ise, closure fonksiyon parantezlerinin dışına yazılabilir.  
- Kod okunabilirliğini artırır.

## Shorthand Closure Syntax  
- Parametre isimleri verilmez, `$0`, `$1` gibi otomatik adlandırmalar kullanılır.  
- Daha kısa ve pratik yazım sağlar.

## Fonksiyon ve Closure Farkı  
- Fonksiyonlar `func` ile tanımlanır, isimleri vardır.  
- Closure'lar isimsizdir, genelde bir değişkene atanır.  
- Fonksiyonlar tekrar tekrar çağrılabilir, closure'lar esnek kullanım için tercih edilir.  
- Closure, fonksiyona çok benzer çalışır ama daha sade ve yerinde tanımlamalar için kullanılır.
