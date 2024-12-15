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
    let primaryColor :String
    let secondaryColor :String
    let tertiaryColor :String
    let imageofplace :String
    let imageocontinent:String
}
    
let TheGreatWall = Place(name: "The Great Wall", country: "Chian", city:"Beijing", establishedyear: "1644", continents: "Asia", primaryColor: "red", secondaryColor: "midyellow", tertiaryColor: "darkgreen",imageofplace: "TGW",imageocontinent: "iAsia")

let LouvreMuseum = Place(name: "Louvre Museum", country: "France", city: "Paris", establishedyear: "1190", continents: "Europe",primaryColor: "lightblue",secondaryColor: "beige",tertiaryColor: "golden",imageofplace: "LM",imageocontinent: "iEurope")
    
let StatueofLiberty = Place(name: "Statue of Liberty", country: "America", city: "New York City", establishedyear: "1886", continents: "North America",primaryColor: "blue",secondaryColor: "red",tertiaryColor: "white",imageofplace: "SOL",imageocontinent: "iNorthAmerica")

let Pyramids = Place(name: "Pyramids", country: "Egypt", city: "Giza", establishedyear: "2580 BC", continents: "Afica",primaryColor: "sandydarkyellow", secondaryColor: "black",tertiaryColor: "brown",imageofplace: "P",imageocontinent: "iAfrica")

let SydneyOperaHouse = Place(name: "Sydney Opera House", country: "Australia", city: "Sydney", establishedyear: "1973", continents: "Oceania",primaryColor: "lightblue",secondaryColor: "sandylightyellow",tertiaryColor: "white",imageofplace: "SOH",imageocontinent: "iOceania")

let sights = [ TheGreatWall,LouvreMuseum,StatueofLiberty,Pyramids,SydneyOperaHouse]
   
  
    
    



