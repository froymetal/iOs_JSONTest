//
//  Model.swift
//  TestTableView
//
//  Created by Froy on 7/6/21.
//
/*

//Ejemplo 1
// "https://newsapi.org/v1/articles?source=techcrunch&apiKey=17cf1b333e964cea91e89e1e824bd366"

import Foundation

//Cabecera
struct LiveNewsModel: Codable {
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

//Detalle
struct NewsResponse: Codable {
    let status: String?
    let source: String?
    let sortBy: String?
    let articles: [LiveNewsModel]?
}
//Ejemplo 2
//( https://itunes.apple.com/search?term=taylor+swift&entity=song
struct Response: Codable {
 *   var results: [Result]
}
 */
struct Result: Decodable {
    var results: [Todo]

}

//Ejemplo 3
// https://jsonplaceholder.typicode.com/todos
struct Todo: Codable {
    public var id: Int
    public var title: String
    public var completed: Bool
}

struct CryptoDataContainer: Decodable {
    let status: String
    let data: CryptoData
}
struct CryptoData :Decodable {
    let coins:[Coin]
}
struct Coin :Decodable, Hashable {
    let name:String
    let price:String
    var totalSupply: Double?
    var change : Double?

}

