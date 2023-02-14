//
//  SplashView.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 13/02/23.
//

import SwiftUI
struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            if self.isActive {
                ContentView()
            } else {
                Image("splash")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
    
}
