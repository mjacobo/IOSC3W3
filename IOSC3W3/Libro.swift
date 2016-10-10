//
//  Libro.swift
//  IOSC3W3
//
//  Created by Mauricio Jacobo Romero on 05/10/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import Foundation

public struct Libro {
    var ISBN   : String
    var titulo : String
    var autores: String
    var imgurl : String
    
    init(ISBN: String, titulo: String, autores: String, imgurl: String) {
        self.ISBN    = ISBN
        self.titulo  = titulo
        self.autores = autores
        self.imgurl  = imgurl
    }
}

public protocol myNewBook {
    func addBook(myBook: Libro);
}
