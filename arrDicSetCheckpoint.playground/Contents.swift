import UIKit

let persons = ["Sawyer", "Jack", "Kate", "John", "Hurley", "Kate", "John"] //sabit bir array tanimladim, ayni elemandan birden fazla var
print(persons.count) //arraydeki veri sayisini yazdirdim

let uniquePersons = Set(persons) //Set aynı elemanı sadece bir kere tutar bu yüzden arrayi sete çevirince tekrar edenler otomatik olarak elenir
print(uniquePersons.count) //setteki veri sayisini yazdirdim

