//
//  ListView.swift
//  myPetV2
//
//  Created by Apprenant 46 on 05/03/2024.
//

import SwiftUI

struct AnimalListView: View {
    @ObservedObject var listView: AnimalsList
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(listView.animals) { animal in
                        NavigationLink {
                            DetailView(listView: AnimalsList(), animal: animal)
                        } label :
                        {
                            VStack {
                                ZStack {
                                    Rectangle()
                                        .fill(Color(red: 0.8, green: 0.35, blue: 0.5))
                                        .frame(width: 120,height: 100)
                                        .cornerRadius(20)
                                        .padding(.top, 60)
                                    
                                    Image(animal.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100)
                                        .padding()
                                }
                                HStack {
                                    Text(animal.name)
                                        .fontWeight(.heavy)
                                        .foregroundStyle(Color(red: 0.8, green: 0.35, blue: 0.5))
                                    Button(action: {
                                        animal.favorite.toggle()
                                    }, label: {if animal.favorite {
                                        Image(systemName: "star.fill")
                                            .foregroundStyle(.yellow)
                                    } else {
                                        Image(systemName: "heart.fill")
                                            .foregroundStyle(.yellow)
                                    }
                                    })
                                    
                                }
                            }
                        }
                    }
                }
                          
                )
            }
            
        }
        
        
    }
}
    


struct AnimalListView_Previews: PreviewProvider {
    static var previews: some View {
        let animalsList = AnimalsList()
        return AnimalListView(listView: animalsList)
    }
}
