//
//  ContentView.swift
//  Lab-SwiftUIIntro
//
//  Created by Everett Brothers on 12/13/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
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
                            
                        } label: {
                            Text("Golf")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Football")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                        }
                    }
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Soccer")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                        }
                        
                        Button {
                            
                        } label: {
                            Text("Baseball")
                                .frame(width: 100, height: 100)
                                .background(
                                    RoundedRectangle(cornerRadius: 15)
                                        .fill(.green)
                                )
                        }
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Submit")
                        .padding()
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.blue)
                        )
                }
                
                Spacer()
                
            }
            .foregroundStyle(.white)
        }
    }
    
}
