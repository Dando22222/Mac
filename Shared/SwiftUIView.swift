//
//  SwiftUIView.swift
//  Play
//
//  Created by Diane Smith on 12/14/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .cornerRadius(10)
                .ignoresSafeArea()
            Text("Border")
            
        }
    
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SwiftUIView()
        Spacer()
        }
    }
}
