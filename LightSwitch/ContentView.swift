//
//  ContentView.swift
//  LightSwitch
//
//  Created by Marc-Developer on 9/15/22.
//

import SwiftUI

struct PushButton: View {
    let titleWhenOn: String
    let titleWhenOff: String
    @Binding var isOn: Bool
    
    var onColors = [Color.blue, Color.mint]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(isOn ? titleWhenOn : titleWhenOff) {
            isOn.toggle()
        }
        .padding()
        .padding(.leading, 50)
        .padding(.trailing, 50)
        .background(
            LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom)
        )
        .foregroundColor(.white)
        .clipShape(Capsule())
        .shadow(radius: isOn ? 0 : 5)
    }
}

struct Light: View {
    @Binding var isOn: Bool
    
    var body: some View {
        ZStack {
            ZStack {
                if isOn {
                    Color.yellow
                        .clipShape(Circle())
                }
            }
            .frame(height: 350)
            .offset(y: -70)
            Image("bulb")
        }
    }
}

struct ContentView: View {
    @State private var lightToggle = false
    
    var body: some View {
        VStack {
            Light(isOn: $lightToggle)
                .padding(30)
            
            PushButton(titleWhenOn: "Turn Off", titleWhenOff: "Turn On", isOn: $lightToggle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
