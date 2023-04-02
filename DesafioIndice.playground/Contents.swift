import UIKit

struct Book {
    let name : String
    let pages : Int
    let theme: String
}


let books : [Book] = [
    Book(name:"Só sei que foi assim" , pages: 210, theme: "Drama"),
    Book(name:"O que é isso?", pages: 85, theme: "Tecnico"),
    Book(name:"Mamãe" , pages: 42, theme: "Infantil"),
    Book(name:"Como resolvo esse bug", pages: 110, theme: "Tecnico"),
    Book(name:"Livro Legal" , pages: 35, theme: "Infantil"),
    Book(name: "Xcode - e agora?", pages: 200, theme: "Drama"),
    Book(name: "Meu mouse - O terror", pages: 107, theme: "Drama")
]

//Livro com maior numero de paginas
func getMax (_ book : [Book]) -> String {
    let maxPage = books.map {$0.pages}.sorted().last!
    for b in book {
        if b.pages == maxPage {
            print(b.name)
        }
    }
    return ""
}

let maxBooks = getMax(books)
print(maxBooks)

//Livro com menor numero de paginas
func getMin(_ book : [Book]) -> String {
    let minPage = book.map {$0.pages}.sorted().first!
    for b in book {
        if b.pages == minPage {
            print(b.name)
        }
    }
    return ""
}

let minBooks = getMin(books)
print(minBooks)

//let techBooks = books.filter{$0.theme == "Tecnico"}.map{$0.pages}.sorted().last!
//print(techBooks)

//Livro do tema “Tecnico” com maior quantidade de páginas
func techWithMostPages(_ book : [Book]) -> String {
    let techBooks = book.filter{$0.theme == "Tecnico"}.map{$0.pages}.sorted().last!
    for b in book {
        if b.pages == techBooks{
            print(b.name)
        }
    }
    return ""
}

let techBook = techWithMostPages(books)
print(techBook)

//Livro do tema “Drama” com maior quantidade de páginas
func dramaWithMostPages(_ book : [Book]) -> String {
    let dramaBooks = book.filter{$0.theme == "Drama"}.map{$0.pages}.sorted().last!
    for b in book {
        if b.pages == dramaBooks{
            print(b.name)
        }
    }
    return ""
}

let dramaBook = dramaWithMostPages(books)
print(dramaBook)

//Livro do tema “Infantil” com maior quantidade de páginas
func infWithMostPages(_ book : [Book]) -> String {
    let infBooks = book.filter{$0.theme == "Infantil"}.map{$0.pages}.sorted().last!
    for b in book {
        if b.pages == infBooks{
            print(b.name)
        }
    }
    return ""
}

let infBook = infWithMostPages(books)
print(infBook)

//Tema com maior quantidade de paginas
func themeWithMostPages(_ book : [Book]) -> String {
    var dramaBooks : [Book] = []
    var techBooks : [Book] = []
    var childBook : [Book] = []
    for b in book {
        if b.theme == "Drama"{
            dramaBooks.append(b)
        } else if b.theme == "Infantil"{
            childBook.append(b)
        } else if b.theme == "techBooks" {
            techBooks.append(b)
        }
    }
    let dramaPages = dramaBooks.map{$0.pages}.reduce(0, +)
    let techPages = techBooks.map{$0.pages}.reduce(0, +)
    let childPages = childBook.map{$0.pages}.reduce(0, +)
    
    if dramaPages > techPages && dramaPages > childPages {
        print("Livros de Drama tem mais Páginas!!")
    } else if childPages > techPages && childPages > dramaPages {
        print("Livros Infantis tem mais Páginas!!")
    } else if techPages > dramaPages && techPages > childPages {
        print("Livros de Tecnologia tem mais Páginas!!")
    }
    
    return ""
}

var ba = themeWithMostPages(books)
print(ba)


//Tema com Menor quantidade de paginas
func themeWithLessPages(_ book : [Book]) -> String {
    var dramaBooks : [Book] = []
    var techBooks : [Book] = []
    var childBook : [Book] = []
    for b in book {
        if b.theme == "Drama"{
            dramaBooks.append(b)
        } else if b.theme == "Infantil"{
            childBook.append(b)
        } else if b.theme == "techBooks" {
            techBooks.append(b)
        }
    }
    let dramaPages = dramaBooks.map{$0.pages}.reduce(0, +)
    let techPages = techBooks.map{$0.pages}.reduce(0, +)
    let childPages = childBook.map{$0.pages}.reduce(0, +)
    
    if dramaPages < techPages && dramaPages < childPages {
        print("Livros de Drama tem menos Páginas!!")
    } else if childPages < techPages && childPages < dramaPages {
        print("Livros Infantis tem menos Páginas!!")
    } else if techPages < dramaPages && techPages < childPages {
        print("Livros de Tecnologia tem menos Páginas!!")
    }
    
    return ""
}

var na = themeWithLessPages(books)
print(na)


//nova listagem ordenada da maior para maior quantidade de paginas
func newOrderMostPages(_ book : [Book]) -> String {
    let newOrder = book.sorted{$0.pages > $1.pages}
    print(newOrder) // Print sai bem esquisito, mas ta ordenado
    return ""
}

var new = newOrderMostPages(books)
print(new)


//nova listagem ordenada da menor para maior quantidade de paginas
func newOrderLessPages(_ book : [Book]) -> String {
    let newOrder = book.sorted{$0.pages < $1.pages}
    print(newOrder)
    return ""
    }

var nova = newOrderLessPages(books)
print(nova)
