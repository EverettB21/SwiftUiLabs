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
                        ButtonView(selection: $selection, name: "Golf", selectionSubmitted: $selectionSubmitted)
                        ButtonView(selection: $selection, name: "Football", selectionSubmitted: $selectionSubmitted)
                    }
                    
                    HStack {
                        ButtonView(selection: $selection, name: "Soccer", selectionSubmitted: $selectionSubmitted)
                        ButtonView(selection: $selection, name: "Baseball", selectionSubmitted: $selectionSubmitted)
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

struct ButtonView: View {
    
    @Binding var selection: String
    @State var name: String
    @Binding var selectionSubmitted: Bool
    
    var body: some View {
        Button {
            selection = name
            selectionSubmitted = false
        } label: {
            Text(name)
                .frame(width: 100, height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.green)
                )
                .opacity(selection == name ? 1 : 0.5)
        }
    }
}
