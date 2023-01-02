//
//  CustomNavBarDetailView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct CustomNavBarDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showBackButton: Bool = true
    @State private var className: String = "WAR"
    @State private var navBarColor : Color = (Color("TankColor"))
    @State private var classImage : Image = Image("Warrior")
    
    var body: some View {
        VStack {
            HStack {
                if showBackButton {
                backButton
                }
                Spacer()
                imageSection
                Spacer()
                if showBackButton {
                backButton
                        .opacity(0)
                }
            }
            .padding(.top, 0)
        .background((navBarColor).ignoresSafeArea(edges: .all))
        Spacer()
        }
    }
}

struct CustomNavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
            CustomNavBarDetailView()
    }
}
extension CustomNavBarDetailView {
    
    private var backButton: some View {
        Button(action:{presentationMode.wrappedValue.dismiss()}, label:{
            Image(systemName: "chevron.left")})
        .font(.system(size: 32))
        .padding([.leading, .bottom], 40.0)
        .foregroundColor(.white)
    }
    
    private var imageSection: some View {
        VStack (spacing: -10) {
            classImage
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.bottom)
            Text(className)
                .font(.system(size: 20))
                .font(.subheadline)
                .foregroundColor(.white)
                .fontWeight(.semibold)
        }
        .padding(.bottom)
    }
}
