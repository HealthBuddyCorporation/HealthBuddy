//
//  NewCharacterView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 15/12/2023.
//


import SwiftUI

struct NewCharacterView: View {
    @State private var tapCount = 0
    @State private var showSquare = false
    @State private var showPlayButton = false
    @State private var showTextField = false
    @State private var textFieldText = ""
    
    let motivationalPhrases = [
        "You can do it",
        "Keep going!",
        "Great job!",
        "Believe in yourself",
        "You're amazing!"
    ]
    
    @State private var currentPhraseIndex = 0
    
    var body: some View {
        ZStack {
            LoginAnimation()
            BlurEffect(style: .systemUltraThinMaterial)
                .ignoresSafeArea()
            VStack {
                if showSquare {
                    Text("You just adopt a new character")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(EdgeInsets(top: -100, leading: 0, bottom: 0, trailing: 0))
                        .opacity(tapCount >= 5 ? 1 : 0)
                        .animation(.easeInOut)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 100, height: 300)
                        .foregroundColor(.red)
                        .opacity(tapCount >= 5 ? 1 : 0)
                        .animation(.easeInOut)
                    
                    if showTextField {
                        TextField("Hey budd, give me a name", text: $textFieldText)
                            .frame(width: 300, height: 20)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    if showPlayButton {
                        Button("Play now!") {
                            
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                        .transition(.opacity)
                    }
                } else {
                    Text("Tap the closet")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(EdgeInsets(top: -100, leading: 0, bottom: 0, trailing: 0))
                    
                    Rectangle()
                        .frame(width: 100, height: 300)
                        .onTapGesture {
                            tapCount += 1
                            
                            if tapCount >= 5 {
                                withAnimation {
                                    showSquare = true
                                    showPlayButton = true
                                    showTextField = true
                                }
                            }
                            updateMotivationalPhrase()
                        }
                    
                    Text(motivationalPhrases[currentPhraseIndex])
                        .foregroundColor(.white)
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
                        .opacity(showSquare ? 0 : 1)
                }
                
                Button("Reload View") {
                    tapCount = 0
                    showSquare = false
                    showPlayButton = false
                    showTextField = false
                    textFieldText = ""
                    currentPhraseIndex = 0
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            .onAppear {
                showSquare = true
            }
        }
    }
    
    private func updateMotivationalPhrase() {
        // Mettre à jour l'index de la phrase motivante
        currentPhraseIndex = (currentPhraseIndex + 1) % motivationalPhrases.count
    }
}


#Preview {
    NewCharacterView()
}
