//
//  PushButton.swift
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

struct PushButton_Previews: PreviewProvider {
    @State private static var lightToggle: Bool = false
    
    static var previews: some View {
        PushButton(titleWhenOn: "Turn Off", titleWhenOff: "Turn On", isOn: $lightToggle)
    }
}
