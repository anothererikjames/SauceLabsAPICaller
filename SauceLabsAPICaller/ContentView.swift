//
//  ContentView.swift
//  SauceLabsAPICaller
//
//  Created by Erik James on 1/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var apiCaller:APICaller = APICaller()
    @State var buttonTitle: String = "Start API Calls"
    var body: some View {
        VStack {
            Button(action: {
                self.apiCaller.callAllAPIS(contentView:self)
            }) {
                Text(buttonTitle)
                        .fontWeight(.bold)
                        .font(.title)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
