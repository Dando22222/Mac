//
//  NewNavView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct CustomNavBarClassView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var showBackButton: Bool = true
    @State var title: String = "CLASSES"

    var body: some View {
        HStack {
            if showBackButton {
            backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
            backButton
                    .opacity(0)
            }
        }
        .padding(.top, 0)
        .background(Color.black.opacity(0.8).ignoresSafeArea(edges: .all))
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarClassView()
            Spacer()
        }
    }
}

extension CustomNavBarClassView {
    private var backButton: some View {
        Button(action:{presentationMode.wrappedValue.dismiss()}, label:{
            Image(systemName: "list.bullet.circle")})
        .font(.system(size: 42))
        .padding([.leading, .bottom], 40.0)
        .foregroundColor(.white)
    }
    
    private var titleSection: some View {
        VStack (spacing: 4) {
            Text(title.uppercased())
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.bottom, 15)
        
        }
    }
    
    
}
