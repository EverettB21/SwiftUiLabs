//
//  ContentView.swift
//  SwiftUiAnimations
//
//  Created by Everett Brothers on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var startGame = false
    @State var count = 10
    @State var scale: CGFloat = 10.0
    @State var timer: Timer?
    
    var labelValue: String {
        if count > 0 {
            return String(count)
        } else {
            return "GO!"
        }
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                if startGame {
                    Spacer()
                    
                    Text(labelValue)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .scaleEffect(scale)
                    
                        .task {
                            withAnimation(.easeIn(duration: 0.5)) {
                                scale = 1
                            }
                            
                            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in 
                                if count > 0 {
                                    count -= 1
                                    scale = 10
                                    
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        scale = 1
                                    }
                                } else {
                                    timer?.invalidate()
                                }
                            }
                        }
                    
                    Spacer()
                } else {
                    Spacer()
                }
                Button {
                    count = 10
                    startGame.toggle()
                } label: {
                    Text("start game")
                }
            }
            .padding()
        }
    }
    
    func countDown() {
        
    }
}

#Preview {
    ContentView()
}
