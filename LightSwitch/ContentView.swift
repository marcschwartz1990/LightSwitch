//
//  ContentView.swift
//  LightSwitch
//
//  Created by Marc-Developer on 9/15/22.
//

import SwiftUI

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
