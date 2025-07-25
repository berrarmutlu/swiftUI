import UIKit
//3'un kati fizz, 5'in kati buzz, 3 ve 5'in kati fizzbuzz yazdiracagim  1...100

for number in 1...100{
    if number % 3 == 0 { // eger sayi 3 ve 5'in katiysa bu sartta calisir ama once 3u kontrol ettigimiz icin bu blok calisir, else if bloklarina girilmez
        print( "fizz")   //bu yuzden 15 gibi sayilarda da sadece fizz yazdirilir fizzbuzz yazdirilmaz
    } else if number % 5 == 0 {
        print("buzz")
    } else if number % 3 == 0 && number % 5 == 0 {
        print("fizzbuzz")
    }else {
        print(number)
    }
}

print()

for number in 1...100{ // dogru sonucu burada aliriz once iki sayinin da ortak katini kontrol ederiz eger kosul saglanmiyorsa else if'lere girilir
    if number % 3 == 0 && number % 5 == 0 {
        print( "fizzbuzz")
    }
    else if number % 3 == 0 {
        print("fizz")
    }
    else if number % 5 == 0 {
        print("buzz")
    }
    else {
        print(number)
    }
}
