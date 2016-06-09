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
    /* yeah it's not the correct type of baseURL, but the stretch time is so limited I needed to simplify */

    
    static func getShip(completion: ((starships: [Starship]) -> Void )) {
        guard let url = self.baseURL else {fatalError()}
        
        NetworkController.performRequestForURL(url, httpMethod: .Get, urlParameters: nil, body: nil) { (data, error) in
            if let data = data {
                var starshipDictionaries: [[String: AnyObject]] = []
                
                do { guard let responseDictionary = try NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments) as? [String : AnyObject],
                    starshipJSONDictionaries = responseDictionary["starships"] as? [[String: AnyObject]] else {
                        print("ERROR SERIALIZING JSON -> \(#function)")
                        completion(starships: [])
                        return
                    }
                    starshipDictionaries = starshipJSONDictionaries
                } catch let error as NSError {
                    print("ERROR SERIALIZING JSON -- \(error.localizedDescription) -> \(#function)")
                }
                let starships = starshipDictionaries.flatMap({Starship(dictionary: $0)})
                completion(starships: starships)
            } else {
                print("NO DATA")
                completion(starships: [])
            }
        }
    }
    
    
    
    
}