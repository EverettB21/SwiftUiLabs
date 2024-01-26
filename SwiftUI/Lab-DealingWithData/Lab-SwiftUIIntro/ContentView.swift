//
//  ContentView.swift
//  Lab-SwiftUIIntro
//
//  Created by Everett Brothers on 12/13/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var selectionSubmitted = false
    @State var selection = ""
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                
                Spacer()
                
                Text("Favorite Sport")
                    .font(.largeTitle)
                
                Spacer()
                
                VStack{
                    HStack{
                        Button {
                            selection = "Golf"
                            selectionSubmitted = false
                        } label: {
                            Text("Golf")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                                .opacity(selection == "Golf" ? 1 : 0.5)
                        }
                        
                        Button {
                            selection = "Football"
                            selectionSubmitted = false
                        } label: {
                            Text("Football")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                                .opacity(selection == "Football" ? 1 : 0.5)
                        }
                    }
                    
                    HStack {
                        Button {
                            selection = "Soccer"
                            selectionSubmitted = false
                        } label: {
                            Text("Soccer")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                                .opacity(selection == "Soccer" ? 1 : 0.5)
                        }
                        
                        Button {
                            selection = "Baseball"
                            selectionSubmitted = false
                        } label: {
                            Text("Baseball")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                                .opacity(selection == "Baseball" ? 1 : 0.5)
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    selectionSubmitted = true
                } label: {
                    Text("Submit")
                        .padding()
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.blue)
                        )
                }
                
                if selectionSubmitted {
                    Text("You chose \(selection)")
                        .padding()
                }
                
                Spacer()
                
            }
            .foregroundStyle(.white)
        }
    }
    
}
