//
//  Light.swift
//  LightSwitch
//
//  Created by Marc-Developer on 9/15/22.
//

import SwiftUI

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

struct Light_Previews: PreviewProvider {
    @State private static var lightToggle = false
    
    static var previews: some View {
        Light(isOn: $lightToggle)
    }
}
