//
//  ContentView.swift
//  Shared
//
//  Created by Diane Smith on 12/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            HStack(alignment: .bottom) {
                    Image(systemName: "list.bullet.circle")
                        .font(.system(size: 46))
                        .offset(x: -69, y:-17)
                        Text("CLASSES")
                            .bold()
                            .opacity(0.6)
                            .font(.largeTitle)
                            .offset(x: -31, y: 10)
                    }
                .frame(maxWidth: .infinity)
            .frame(height: 97, alignment: .top)
            .padding(.horizontal, 16)
            .padding(.top, 49)
            .background(Color.black.opacity(0.2))
            .frame(maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea()
        }
        
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
