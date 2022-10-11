//
//  Articles.swift
//  GoodNews
//
//  Created by Henrique Alves Batochi on 11/10/22.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Article]
    
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=br&apiKey=dd228e381c8f4a54b39a14e061e93802")!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
