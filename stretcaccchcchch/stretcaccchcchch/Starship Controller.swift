//
//  Starship Controller.swift
//  stretcaccchcchch
//
//  Created by Steve Cox on 6/9/16.
//  Copyright © 2016 SteveCox. All rights reserved.
//

import Foundation

class StarshipController{

static let baseURL = NSURL(string: "http://swapi.co/api/starships/12/")

    
    static func getShip(completion: ((starship: [Starship]) -> Void )) {
        guard let url = self.baseURL else {fatalError()}
        
        let urlParameters = ["count" : "\(numberOfCards)"]
        
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: urlParameters, body: nil) { (data, error) in
            if let data = data {
                var cardDictionaries: [[String: AnyObject]] = []
                
                do { guard let responseDictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? [String : AnyObject],
                    cardJSONDictionaries = responseDictionary["cards"] as? [[String: AnyObject]] else {
                        print("ERROR SERIALIZING JSON -> \(#function)")
                        completion(cards: [])
                        return
                    }
                    cardDictionaries = cardJSONDictionaries
                } catch let error as NSError {
                    print("ERROR SERIALIZING JSON -- \(error.localizedDescription) -> \(#function)")
                }
                let cards = cardDictionaries.flatMap({Card(dictionary: $0)})
                completion(cards: cards)
            } else {
                print("NO DATA")
                completion(cards: [])
            }
        }
    }
    
    
    
    
}