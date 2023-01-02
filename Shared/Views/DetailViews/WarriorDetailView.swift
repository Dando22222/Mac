//
//  WarriorDetailView.swift
//  Play (iOS)
//
//  Created by Diane Smith on 12/17/22.
//

import SwiftUI

struct WarriorDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var showBackButton: Bool = true
    var className: String = "WAR"
    var navBarColor : Color = (Color("TankColor"))
    var classImage : Image = Image("Warrior")
    
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

struct WarriorDetailView_Previews: PreviewProvider {
    static var previews: some View {
            WarriorDetailView()
        }
    }

extension WarriorDetailView {
    
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
