//
//  ObjectmapperlistJson.swift
//  
//
//  Created by FCP26 on 08/07/24.
//

import Foundation
import ObjectMapper


class Item: Mappable {
    var Items : [ItemData]?
   
   required init?(map: ObjectMapper.Map) {
   }
   
   func mapping(map: ObjectMapper.Map) {
       Items <- map["Items"]
   }
}

struct ItemData: Mappable {
   var Name: String = ""
   var Brand: String = ""
    var price: Double = 0.00
   var description: String = ""
   var sizes: String = ""
    var image: String = ""

   init?(map: Map) {}

   mutating func mapping(map: Map) {
       Name <- map["name"]
       Brand <- map["brand"]
       price <- map["price"]
       description <- map["Description"]
       image <- map["P_Image"]/*, URLTransform())*/
   }

}


class DataManager{
   
   static let shared = DataManager()
   var products: Item?
   
   
   private init(){
      
   }
   

   
   func getItems() -> [ItemData]{
       return products?.Items ?? []
   }
   
   func getItem(byName Name: String) ->ItemData?{
       
       return products?.Items?.first {$0.Name == Name}
   }
}



