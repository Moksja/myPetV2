//
//  DetailView.swift
//  myPetV2
//
//  Created by Apprenant 46 on 05/03/2024.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var listView: AnimalsList
    var animal: Animal
    
    var body: some View {
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 0.8, green: 0.35, blue: 0.5))
                            .frame(width: 320,height: 240)
                            .cornerRadius(20)
                            .padding(.top, 200)
                            
                        Image(animal.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .padding()
                    }
                    HStack {
                        Text(animal.name)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color(red: 0.8, green: 0.35, blue: 0.5))
                            .font(.system(size: 50))
                        Button(action: {
                            animal.favorite.toggle()
                        }, label: {
                            if animal.favorite == true {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.yellow)
                            } else {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.yellow)
                            }                        })
                        
                    }
                }
            
        }
       
    }

#Preview {
   DetailView(listView: AnimalsList(), animal: Animal(name: "Lion", image: "Lion", favorite: true))
}
