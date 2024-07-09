////
////  model.swift
////  Myntra
////
////  Created by fcp22 on 27/06/24.
////
//
//
////class item: Mappable{
////    
////    var name: String?
////    var description: String?
////    var price: Int?
////    
////    required init?(map: Map) {}
////    
////    func mapping(map: ObjectMapper.Map) {
////        name <- map["name"]
////        description <- map["description"]
////        price <- map["price"]
////    }
////}
//import ObjectMapper
//import Foundation
//
//// Define the Product struct
//struct Product {
//    let id: Int
//    let name: String
//    let price: Double
//    let description: String
//    let category: String
//    let ratings: Double
//    let reviews: Int
//    let image: String
//    let mapping: [String: String]
//    
//    // Function to generate mappable string
//    func mappable() -> String {
//        return "\(id)-\(name.lowercased().replacingOccurrences(of: " ", with: "-"))"
//    }
//}
//
//// Sample products
//
//
//// Create a dictionary for JSON serialization
//let jsonDict: [String: Any] = [
//    "products": products.map { product in
//        return [
//            "id": product.id,
//            "name": product.name,
//            "price": product.price,
//            "description": product.description,
//            "category": product.category,
//            "ratings": product.ratings,
//            "reviews": product.reviews,
//            "image": product.image,
//            "mappable": product.mappable(),
//            "mapping": product.mapping
//        ]
//    }
//]
//
