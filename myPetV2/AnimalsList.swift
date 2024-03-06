//
//  AnimalsList.swift
//  myPetV2
//
//  Created by Apprenant 46 on 05/03/2024.
//

import Foundation

class Animal: ObservableObject, Identifiable {
    let id = UUID()
    @Published var name: String
    @Published var image: String
    @Published var favorite: Bool
    
    init(name: String, image: String, favorite: Bool) {
        self.name = name
        self.image = image
        self.favorite = favorite
    }
}

class AnimalsList: ObservableObject {
    @Published var animals: [Animal]
    
    init() {
            self.animals = [
                Animal(name: "Lion", image: "Lion", favorite: false),
                Animal(name: "Cerf", image: "Cerf", favorite: false),
                Animal(name: "Chat", image: "Chat", favorite: false),
                Animal(name: "Chien", image: "Chien", favorite: false),
                Animal(name: "Grenouille", image: "Grenouille", favorite: false),
                Animal(name: "Lapin", image: "Lapin", favorite: false),
                Animal(name: "Panda", image: "Panda", favorite: false),
                Animal(name: "Singe", image: "Singe", favorite: false),
                Animal(name: "Vache", image: "Vache", favorite: false)
            ]
        }
    }
