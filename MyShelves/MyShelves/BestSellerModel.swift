//
//  BestSellerModel.swift
//  MyShelves
//
//  Created by Tatum Manning on 12/1/23.
//

import Foundation

struct bsListResult : Codable, Identifiable {
    var id = UUID()
    var results : [bsListModel]
}

struct bsListModel : Codable, Identifiable {
    var id = UUID()
    var num_results : Int
    var books : [bsBookModel]
}

struct bsBookModel : Codable, Identifiable {
    var id = UUID()
    var list_name : String
    var title : String
    var author : String
    var rank : Int
    var weeks_on_list : Int
    var book_image : URL
    var description : String
}
