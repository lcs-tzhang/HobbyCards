//
//  Player.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import Foundation

struct Place: Identifiable {
    let id = UUID()
    let name : String
    let country:String
    let city : String
    let establishedyear :String
    let continents : String
}
    
let TheGreatWall = Place(name: "The Great Wall", country: "China", city: "Beijing", establishedyear: "1644", continents: "Asia")
let LouvreMuseum = Place(name: "Louvre Museum", country: "France", city: "Paris", establishedyear: "1190", continents: "Europe")
let StatueofLiberty = Place(name: "Statue of Liberty", country: "America", city: "New York City", establishedyear: "1886", continents: "North America")
let Pyramids = Place(name: "Pyramids", country: "Egypt", city: "Giza", establishedyear: "2580 BC", continents: "Afica")
let SydneyOperaHouse = Place(name: "Sydney Opera House", country: "Australia", city: "Sydney", establishedyear: "1973", continents: "Oceania")

let sights = [ TheGreatWall,LouvreMuseum,StatueofLiberty,Pyramids,SydneyOperaHouse]
   
  
    
    



